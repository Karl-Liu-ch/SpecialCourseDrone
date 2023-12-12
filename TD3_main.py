# %%
from Dronesimscape import Dronesimscape
from simulink_gym import logger

logger.setLevel(10)
# Create training environment:
env = Dronesimscape(stop_time=30, model_debug=False)
# Reset environment:
state = env.reset()

# %%
from agent.TD3 import *
import math
K_epochs = 80               # update policy for K epochs
eps_clip = 0.2              # clip parameter for PPO
gamma = 0.99                # discount factor

lr_actor = 0.0003           # learning rate for actor
lr_critic = 0.001           # learning rate for critic
# bias = np.array([(0.4+0.03)/2,0,1,1,1,1,1,1,1,1], dtype=np.float32)
bias = np.array([0,0,0,0,0,0,0,0,0,0], dtype=np.float32)
# max_action = np.array([0.43, math.pi, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000], dtype=np.float32)
max_action = np.array([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], dtype=np.float32)
bias = torch.Tensor(bias).cuda()
max_action = torch.tensor(max_action).cuda()
td3_agent = TD3(state_dim=19, action_dim=10, max_action = max_action, policy_freq=2)
env_name = 'Dronesimscape'
directory = "agent/TD3_preTrained/" + env_name + '/'
checkpoint_path = directory + "TD3_{}.pth".format(env_name)
td3_agent.load(checkpoint_path)

# %%
env_name = "Dronesimscape"
has_continuous_action_space = True

max_ep_len = 1000              # max timesteps in one episode
max_training_timesteps = int(1e5)   # break training loop if timeteps > max_training_timesteps

print_freq = max_ep_len * 4     # print avg reward in the interval (in num timesteps)
log_freq = max_ep_len * 2       # log avg reward in the interval (in num timesteps)
save_model_freq = int(2e4)      # save model frequency (in num timesteps)

action_std = None

update_timestep = max_ep_len * 4      # update policy every n timesteps
K_epochs = 40               # update policy for K epochs
eps_clip = 0.2              # clip parameter for PPO
gamma = 0.99                # discount factor

lr_actor = 0.0003       # learning rate for actor network
lr_critic = 0.001       # learning rate for critic network

random_seed = 0         # set random seed if required (0 = no random seed)


print_running_reward = 0
print_running_episodes = 0

log_running_reward = 0
log_running_episodes = 0

time_step = 0
i_episode = 0

replay_buffer = ReplayBuffer(state_dim=19, action_dim=10)

# training loop
while time_step <= max_training_timesteps:
    
    state = env.reset()
    current_ep_reward = 0

    for t in range(1, max_ep_len+1):
        
        # select action with policy
        action = td3_agent.select_action(state)
        new_state, reward, done, _ = env.step(action)
        pose = np.array([new_state[3], new_state[5], new_state[7]])
        pose = np.array([state[3], state[5], state[7]])
        if np.linalg.norm(env.desired_pose - pose) < 0.01:
            done = 1
        else:
            done = 0
        replay_buffer.add(state, action, new_state, reward, done)
        state = new_state
        
        # saving reward and is_terminals
        
        time_step +=1
        current_ep_reward += reward

        # update PPO agent
        if time_step % update_timestep == 0:
            for i in range(K_epochs):
                td3_agent.train(replay_buffer)

        # printing average reward
        if time_step % print_freq == 0:

            # print average reward till last episode
            print_avg_reward = print_running_reward / print_running_episodes
            print_avg_reward = round(print_avg_reward, 2)

            print("Episode : {} \t\t Timestep : {} \t\t Average Reward : {}".format(i_episode, time_step, print_avg_reward))

            print_running_reward = 0
            print_running_episodes = 0
            
        # save model weights
        if time_step % save_model_freq == 0:
            print("--------------------------------------------------------------------------------------------")
            print("saving model at : " + checkpoint_path)
            td3_agent.save(checkpoint_path)
            print("model saved")
            
        # break; if the episode is over
        if done:
            break

    print_running_reward += current_ep_reward
    print_running_episodes += 1

    log_running_reward += current_ep_reward
    log_running_episodes += 1

    i_episode += 1

env.close()