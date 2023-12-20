import torch
from agent.PPOAgent import *
total_test_episodes = 10    # total num of testing episodes
from Dronesimscape import Dronesimscape
from simulink_gym import logger
logger.setLevel(10)
from pathlib import Path
import sys
sys.path.append('./')
import argparse
parser = argparse.ArgumentParser(description="Matlab Simscape")
parser.add_argument('--version', type=str, default='Dronesimscape.slx')
opt = parser.parse_args()

model_path=opt.version
K_epochs = 80               # update policy for K epochs
eps_clip = 0.2              # clip parameter for PPO
gamma = 0.995                # discount factor

lr_actor = 0.0003           # learning rate for actor
lr_critic = 0.001           # learning rate for critic
env_name = 'Dronesimscape'
directory = "agent/PPO_preTrained/" + env_name + '/'
checkpoint_path = directory + "PPO_{}.pth".format(env_name)


print("============================================================================================")

env_name = "Dronesimscape"
has_continuous_action_space = True

max_ep_len = 10000              # max timesteps in one episode
max_training_timesteps = int(1e8)   # break training loop if timeteps > max_training_timesteps

print_freq = max_ep_len * 4     # print avg reward in the interval (in num timesteps)
log_freq = max_ep_len * 2       # log avg reward in the interval (in num timesteps)
save_model_freq = int(2e4)      # save model frequency (in num timesteps)

action_std = None

update_timestep = max_ep_len * 4      # update policy every n timesteps
K_epochs = 40               # update policy for K epochs
eps_clip = 0.2              # clip parameter for PPO

lr_actor = 0.0003       # learning rate for actor network
lr_critic = 0.001       # learning rate for critic network

random_seed = 0         # set random seed if required (0 = no random seed)

print("training environment name : " + env_name)

directory = "agent/PPO_preTrained"
if not os.path.exists(directory):
      os.makedirs(directory)

directory = directory + '/' + env_name + '/'
if not os.path.exists(directory):
      os.makedirs(directory)


checkpoint_path = directory + "PPO_{}_{}_{}.pth".format(env_name, random_seed, 0)
print("save checkpoint path : " + checkpoint_path)
# initialize a PPO agent
state_dim = 19
ppo_agent = PPO(state_dim=19, action_dim=10, lr_actor = lr_actor, lr_critic = lr_critic, gamma = gamma, K_epochs = K_epochs, eps_clip = eps_clip, has_continuous_action_space = True, action_std_init=0.001)
torch.load('agent/PPO_preTrained/Dronesimscape/PPO_Dronesimscape_0_0.pth')
ppo_agent.load('agent/PPO_preTrained/Dronesimscape/PPO_Dronesimscape_0_0.pth')
print_running_reward = 0
print_running_episodes = 0

log_running_reward = 0
log_running_episodes = 0

time_step = 0
i_episode = 0
action_std_decay_freq = int(1e5)
action_std_decay_rate = 1e-3
min_action_std = 1e-3

env = Dronesimscape(stop_time=10, step_size=0.001, timestep=0.001, 
                    model_path = Path(__file__).parent.absolute().joinpath(model_path),
                    model_debug=False)

def output2action(action):
    action = action + np.array([(0.4+0.03)/2,0,1,1,1,1,1,1,1,1], dtype=np.float32)
    action = action * (np.array([0.43/2, math.pi/2, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000], dtype=np.float32))
    action = np.clip(action, a_min=np.array([-0.03, -math.pi/2, 0, 0, 0, 0, 0, 0, 0, 0],dtype=np.float32),
                            a_max=np.array([0.4, math.pi/2, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000],dtype=np.float32))
    return action
current_ep_reward = 0
sim_time = []
actions = []
states =[]
done = False
state = env.reset()
for t in range(1, max_ep_len+1):
    states.append(state)
    action = ppo_agent.select_action(state)
    action = output2action(action)
    state, reward, done, _ = env.step(action)
    current_ep_reward += reward
    if done:
        print(t)
        break
print(current_ep_reward)
# Stop the current episode:
env.stop_simulation()

env.close()



