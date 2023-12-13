import sys
sys.path.append('/')

import torch
from agent.TD3 import ReplayBuffer, TD3
from agent.DDPG import DDPG
from agent.OurDDPG import DDPG as ODDPG
import math
from Dronesimscape import Dronesimscape
from simulink_gym import logger
logger.setLevel(10)
import argparse
parser = argparse.ArgumentParser(description="Matlab Simscape")
parser.add_argument('--agent', type=str, default='DDPG')
parser.add_argument('--version', type=str, default='Dronesimscape.slx')
parser.add_argument("--expl_noise", default=0.1, type=float)
opt = parser.parse_args()
model_path=opt.version
from pathlib import Path
import numpy as np

def output2action(action):
    action = action + np.array([(0.4+0.03)/2,0,1,1,1,1,1,1,1,1], dtype=np.float32)
    action = action * (np.array([0.43/2, math.pi/2, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000], dtype=np.float32))
    action = np.clip(action, a_min=np.array([-0.03, -math.pi/2, 0, 0, 0, 0, 0, 0, 0, 0],dtype=np.float32),
                            a_max=np.array([0.4, math.pi/2, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000],dtype=np.float32))
    return action

# Create training environment:
env = Dronesimscape(stop_time=10, step_size=0.001, timestep=0.001, 
                    model_path = Path(__file__).parent.absolute().joinpath(model_path),
                    model_debug=False)
# Reset environment:
# state = env.reset()

K_epochs = 80               # update policy for K epochs
eps_clip = 0.2              # clip parameter for PPO
gamma = 0.99                # discount factor

lr_actor = 0.0003           # learning rate for actor
lr_critic = 0.001           # learning rate for critic
bias = np.array([0,0,0,0,0,0,0,0,0,0], dtype=np.float32)
max_action_np = np.array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype=np.float32)
bias = torch.Tensor(bias).cuda()
max_action = torch.tensor(max_action_np).cuda()

env_name = 'Dronesimscape'
if opt.agent == 'TD3':
    agent = TD3(state_dim=19, action_dim=10, max_action = max_action, policy_freq=2)
    directory = "agent/TD3_preTrained/" + env_name + '/'
    checkpoint_path = directory + "TD3_{}.pth".format(env_name)
elif opt.agent == 'DDPG':
    agent = DDPG(state_dim=19, action_dim=10, max_action = max_action)
    directory = "agent/DDPG_preTrained/" + env_name + '/'
    checkpoint_path = directory + "DDPG_{}.pth".format(env_name)
elif opt.agent == 'ODDPG':
    agent = ODDPG(state_dim=19, action_dim=10, max_action = max_action)
    directory = "agent/ODDPG_preTrained/" + env_name + '/'
    checkpoint_path = directory + "ODDPG_{}.pth".format(env_name)

try:
    agent.load(checkpoint_path)
    print("pretrained model loaded")
except:
    pass

env_name = "Dronesimscape"
has_continuous_action_space = True

max_ep_len = 5000              # max timesteps in one episode
max_training_timesteps = int(1e8)   # break training loop if timeteps > max_training_timesteps

print_freq = max_ep_len * 4     # print avg reward in the interval (in num timesteps)
# log_freq = max_ep_len * 2       # log avg reward in the interval (in num timesteps)
save_model_freq = int(2e4)      # save model frequency (in num timesteps)
print_running_reward = 0
print_running_episodes = 1

log_running_reward = 0
log_running_episodes = 0
# action_std = None

update_timestep = max_ep_len * 4      # update policy every n timesteps
K_epochs = 40

log_running_reward = 0
log_running_episodes = 0

time_step = 0
i_episode = 0
action_dim = 10
replay_buffer = ReplayBuffer(state_dim=19, action_dim=action_dim)
episode_timesteps  = 0
episode_num = 0
# training loop
state = env.reset()
current_ep_reward = 0
for time_step in range(int(max_training_timesteps)):
    episode_timesteps += 1
    
    if time_step < 2e3:
        action = env.action_space.sample()
    else:
        action = (agent.select_action(state)
                + np.random.normal(0, max_action_np * opt.expl_noise, size=action_dim)
            )
        action = np.clip(action, a_min=-max_action_np, a_max=max_action_np, dtype = np.float32)
    
    action = output2action(action)
    new_state, reward, done, _ = env.step(action)
    pose = np.array([new_state[3], new_state[5], new_state[7]])
    pose = np.array([state[3], state[5], state[7]])
    if np.linalg.norm(env.desired_pose - pose) < 0.01:
        done_bool = 1
    else:
        done_bool = 0
    replay_buffer.add(state, action, new_state, reward, done_bool)
    state = new_state
    
    # saving reward and is_terminals
    
    current_ep_reward += reward

    # update PPO agent
    if time_step > 2e3:
        # print('training')
        agent.train(replay_buffer)
        
    # save model weights
    if (time_step + 1) % save_model_freq == 0:
        print("--------------------------------------------------------------------------------------------")
        print("saving model at : " + checkpoint_path)
        agent.save(checkpoint_path)
        print("model saved")
        
    # break; if the episode is over
    if done: 
        state, done = env.reset(), False
        episode_num += 1 
        print_running_reward += current_ep_reward
        print_avg_reward = print_running_reward / episode_num
        print_avg_reward = round(print_avg_reward, 2)
        # +1 to account for 0 indexing. +0 on ep_timesteps since it will increment +1 even if done=True
        print(f"Total T: {time_step} Episode Num: {episode_num} Episode T: {episode_timesteps} Reward: {current_ep_reward:.3f}")
        # Reset environment
        current_ep_reward = 0
        episode_timesteps = 0

        i_episode += 1

env.close()