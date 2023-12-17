import sys
sys.path.append('/')
import torch
import torch.nn as nn
import numpy as np

class Linear(nn.Module):
    def __init__(self, inchannels, outchannels):
        super().__init__()
        self.D1 = nn.Linear(inchannels, outchannels)
        nn.init.xavier_uniform_(self.D1.weight.data, 1.)
    def forward(self, x):
        return self.D1(x)
    
class Networt(nn.Module):
    def __init__(self, inchannels, outchannels, hiddensize = 256):
        super().__init__()
        self.net = nn.Sequential(
            Linear(inchannels, hiddensize), 
            nn.Tanh(), 
            Linear(hiddensize, hiddensize*2), 
            nn.Tanh(), 
            Linear(hiddensize*2, hiddensize*4), 
            nn.Tanh(), 
            Linear(hiddensize*4, hiddensize*2), 
            nn.Tanh(), 
            Linear(hiddensize*2, hiddensize), 
            nn.Tanh(), 
            Linear(hiddensize, outchannels), 
            nn.Tanh()
        )
        
    def forward(self, x):
        return (self.net(x) + 1.0) / 2.0

BATCH = 2 ** 18
max_prop = 1000
coaxialeff = 450000/(max_prop**2)
coefthrust = 5.7199 / (max_prop**2)
coeftorque = 0.4008 / (max_prop**2)
k = coefthrust
b = coeftorque
Lx = 0.36 / 2
Ly = 0.26 / 2 
Lz = 0.0221
controlmatrix = np.array([[Lx*coefthrust, Lx*coefthrust, -Lx*coefthrust, -Lx*coefthrust, -Lx*coefthrust, -Lx*coefthrust, Lx*coefthrust, Lx*coefthrust],
    [-Ly*coefthrust, -Ly*coefthrust, -Ly*coefthrust, -Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, Ly*coefthrust],
    [coeftorque, -coeftorque, -coeftorque, coeftorque, coeftorque, -coeftorque, -coeftorque, coeftorque],
    [coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust]], dtype=np.float32)

controlmatrix = torch.from_numpy(controlmatrix).cuda()
# controlmatrix = controlmatrix.unsqueeze(dim=0).expand(BATCH, 4, 8)
outstd = torch.tensor([max_prop ** 2, max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2]).cuda()
# outmean = torch.tensor([max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2, max_prop ** 2 / 2]).cuda()

def train(params_path='agent/controlalocation/model.pth'):
    model = Networt(6, 8).cuda()
    try:
        model.load_state_dict(torch.load(params_path))
        print('model loaded')
    except:
        print('model loading failed')
    learning_rate = 1e-4
    std = torch.tensor([0.5, 0.5, 2, 5]).cuda()
    mean = torch.tensor([0, 0, 0, 20]).cuda()
    d_scale = 0.43/2.0
    optim = torch.optim.Adam(model.parameters(), lr=learning_rate)
    scheduler = torch.optim.lr_scheduler.CosineAnnealingLR(optim, 1000, eta_min=1e-6)
    for i in range(1000):
        for k in range(100):
            optim.zero_grad()
            lr = optim.param_groups[0]['lr']
            target = torch.randn(size=[BATCH, 4]).cuda()
            alpha = torch.randn(size=[BATCH, 1]).cuda()
            d = torch.randn(size=[BATCH, 1]).cuda()
            target = torch.concat([target, alpha, d], dim=1)
            output = model(target)
            output = output * (max_prop ** 2)
            output = output.unsqueeze(dim=-1)
            controlmatrix = mixmatrix(Lx, Ly, Lz, k, b, d, alpha, BATCH)
            actuator = controlmatrix @ output
            actuator = actuator.squeeze(dim=-1)
            actuator = (actuator - mean) / std
            loss = nn.MSELoss()(target[:,:4], actuator)
            # loss += nn.L1Loss()(output, torch.zeros_like(output)) * 1e-8
            loss.backward()
            optim.step()
        scheduler.step()
        print('epoch: ', i, ' loss: ', loss.item(), ' learning rate: ', lr)
        torch.save(model.state_dict(), params_path)

def mixmatrix(Lx, Ly, Lz, k, b, d, alpha, BATCH):
    d_scale = 0.43/2.0
    dcg = d * d_scale + d_scale
    c = torch.cos(alpha*torch.pi/2.0)
    s = torch.sin(alpha*torch.pi/2.0)
    matrixfront = torch.Tensor([[Lx*k, Lx*k, -Lx*k, -Lx*k], 
                         [-Ly*k, -Ly*k, -Ly*k, -Ly*k], 
                         [b, -b, -b, b], 
                         [k, k, k, k]]).type(torch.float32).cuda()
    matrixfront = matrixfront.unsqueeze(dim=0).expand(BATCH, 4, 4)
    d_bias = torch.Tensor([[0,0,0,0], 
                            [1,1,1,1], 
                            [0,0,0,0], 
                            [0,0,0,0]]).type(torch.float32).cuda()
    d_bias = d_bias.unsqueeze(dim=0).expand(BATCH, 4, 4)
    d_bias = d_bias * dcg.unsqueeze(dim=1).expand(BATCH, 4, 4)
    matrixfront = matrixfront + d_bias * k
    matrixback = torch.Tensor([[-Lx*k, -Lx*k, Lx*k, Lx*k], 
                         [Ly*k, Ly*k, Ly*k, Ly*k], 
                         [b, -b, -b, b], 
                         [k, k, k, k]]).type(torch.float32).cuda()
    matrixback = matrixback.unsqueeze(dim=0).expand(BATCH, 4, 4)
    matrixback = matrixback * c.unsqueeze(dim=1).expand(BATCH, 4, 4)
    matrixback = matrixback + d_bias * k * c.unsqueeze(dim=1).expand(BATCH, 4, 4)
    bias_roll = torch.Tensor([[-1,-1,-1,-1], 
                            [0,0,0,0], 
                            [0,0,0,0], 
                            [0,0,0,0]]).type(torch.float32).cuda()
    bias_roll = bias_roll.unsqueeze(dim=0).expand(BATCH, 4, 4)
    bias_roll = bias_roll * s.unsqueeze(dim=1).expand(BATCH, 4, 4) * b
    matrixback = matrixback + bias_roll
    bias_z = torch.Tensor([[0,0,0,0], 
                        [-1,-1,-1,-1], 
                        [0,0,0,0], 
                        [0,0,0,0]]).type(torch.float32).cuda()
    bias_z = bias_z.unsqueeze(dim=0).expand(BATCH, 4, 4)
    bias_z = bias_z * s.unsqueeze(dim=1).expand(BATCH, 4, 4) * Lz * k
    matrixback = matrixback + bias_z
    controlmatrix = torch.concat([matrixfront, matrixback], dim=2)
    return controlmatrix

def prediction(params_path, data):
    model = Networt(6, 8).cuda()
    model.load_state_dict(torch.load(params_path))
    model.eval()
    data = np.array(data)
    data = (data - np.array(([0, 0, 0, 20, 0, 0.43/2.0]))) / np.array([0.5, 0.5, 2, 5, np.pi, 0.43/2.0])
    data = torch.tensor(data, dtype=torch.float32).cuda()
    data = data.unsqueeze(dim=0)

    with torch.no_grad():
        pred = model(data)
    pred = pred.detach().cpu().numpy().squeeze()
    pred = np.ascontiguousarray(pred.T) * (max_prop ** 2)

    return pred

if __name__ == '__main__':
    train()
    params_path = 'agent/controlalocation/model.pth'
    data = [0.0791,-0.0162,-0.1046,22]
    pred = prediction(params_path, data)
    print(pred)
    actuator = controlmatrix.cpu().numpy() @ pred
    print(actuator)