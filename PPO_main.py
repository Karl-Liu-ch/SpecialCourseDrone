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
#### log files for multiple runs are NOT overwritten

log_dir = "PPO_logs"
if not os.path.exists(log_dir):
      os.makedirs(log_dir)

log_dir = log_dir + '/' + env_name + '/'
if not os.path.exists(log_dir):
      os.makedirs(log_dir)


#### get number of log files in log directory
run_num = 0
current_num_files = next(os.walk(log_dir))[2]
run_num = len(current_num_files)


################### checkpointing ###################

run_num_pretrained = 0      #### change this to prevent overwriting weights in same env_name folder

directory = "agent/PPO_preTrained"
if not os.path.exists(directory):
      os.makedirs(directory)

directory = directory + '/' + env_name + '/'
if not os.path.exists(directory):
      os.makedirs(directory)


checkpoint_path = directory + "PPO_{}_{}_{}.pth".format(env_name, random_seed, run_num_pretrained)
print("save checkpoint path : " + checkpoint_path)

#####################################################


############# print all hyperparameters #############

print("--------------------------------------------------------------------------------------------")

print("max training timesteps : ", max_training_timesteps)
print("max timesteps per episode : ", max_ep_len)

print("model saving frequency : " + str(save_model_freq) + " timesteps")
print("log frequency : " + str(log_freq) + " timesteps")
print("printing average reward over episodes in last : " + str(print_freq) + " timesteps")

print("--------------------------------------------------------------------------------------------")

print("--------------------------------------------------------------------------------------------")

if has_continuous_action_space:
    print("Initializing a continuous action space policy")
    print("--------------------------------------------------------------------------------------------")
    print("starting std of action distribution : ", action_std)

else:
    print("Initializing a discrete action space policy")

print("--------------------------------------------------------------------------------------------")

print("PPO update frequency : " + str(update_timestep) + " timesteps") 
print("PPO K epochs : ", K_epochs)
print("PPO epsilon clip : ", eps_clip)
print("discount factor (gamma) : ", gamma)

print("--------------------------------------------------------------------------------------------")

print("optimizer learning rate actor : ", lr_actor)
print("optimizer learning rate critic : ", lr_critic)
#####################################################

print("============================================================================================")

################# training procedure ################

# initialize a PPO agent
state_dim = 19
ppo_agent = PPO(state_dim=19, action_dim=10, lr_actor = lr_actor, lr_critic = lr_critic, gamma = gamma, K_epochs = K_epochs, eps_clip = eps_clip, has_continuous_action_space = True, action_std_init=0.1)
torch.load('agent/PPO_preTrained/Dronesimscape/PPO_Dronesimscape_0_0.pth')
try:
    ppo_agent.load('agent/PPO_preTrained/Dronesimscape/PPO_Dronesimscape_0_0.pth')
    print("pretrained model loaded")
except:
    pass

# track total training time
start_time = datetime.now().replace(microsecond=0)
print("Started training at (GMT) : ", start_time)

print("============================================================================================")

# printing and logging variables
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

state = env.reset()
def output2action(action):
    action = action + np.array([(0.4+0.03)/2,0,1,1,1,1,1,1,1,1], dtype=np.float32)
    action = action * (np.array([0.43/2, math.pi/2, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000], dtype=np.float32))
    action = np.clip(action, a_min=np.array([-0.03, -math.pi/2, 0, 0, 0, 0, 0, 0, 0, 0],dtype=np.float32),
                            a_max=np.array([0.4, math.pi/2, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000],dtype=np.float32))
    return action
if random_seed:
    print("--------------------------------------------------------------------------------------------")
    print("setting random seed to ", random_seed)
    torch.manual_seed(random_seed)
    env.seed(random_seed)
    np.random.seed(random_seed)


state_norm = Normalization(shape=state_dim)  # Trick 2:state normalization
reward_norm = Normalization(shape=1)
reward_scaling = RewardScaling(shape=1, gamma=gamma)

# training loop
while time_step <= max_training_timesteps:
    
    state = env.reset()
    current_ep_reward = 0

    for t in range(1, max_ep_len+1):
        
        # select action with policy
        action = ppo_agent.select_action(state)
        action = output2action(action)
        state, reward, done, _ = env.step(action)
        pose = np.array([state[3], state[5], state[7]])
        # state = state_norm(state)
        # reward = reward_norm(reward)
        # reward = reward_scaling(reward)
        
        # saving reward and is_terminals
        ppo_agent.buffer.rewards.append(reward)
        ppo_agent.buffer.is_terminals.append(done)
        
        time_step +=1
        current_ep_reward += reward

        # update PPO agent
        if time_step % update_timestep == 0:
            ppo_agent.update()

        # if continuous action space; then decay action std of ouput action distribution
        if has_continuous_action_space and time_step % action_std_decay_freq == 0:
            ppo_agent.decay_action_std(action_std_decay_rate, min_action_std)

        # log in logging file
        if time_step % log_freq == 0:

            # log average reward till last episode
            log_avg_reward = log_running_reward / log_running_episodes
            # log_avg_reward = round(log_avg_reward, 4)


            log_running_reward = 0
            log_running_episodes = 0

        # printing average reward
        if time_step % print_freq == 0:

            # print average reward till last episode
            print_avg_reward = print_running_reward / print_running_episodes
            # print_avg_reward = round(print_avg_reward, 2)

            print("Episode : {} \t\t Timestep : {} \t\t Average Reward : {}".format(i_episode, time_step, print_avg_reward))

            print_running_reward = 0
            print_running_episodes = 0
            
        # save model weights
        if time_step % save_model_freq == 0:
            print("--------------------------------------------------------------------------------------------")
            print("saving model at : " + checkpoint_path)
            ppo_agent.save(checkpoint_path)
            print("model saved")
            print("Elapsed Time  : ", datetime.now().replace(microsecond=0) - start_time)
            print("--------------------------------------------------------------------------------------------")
            
        # break; if the episode is over
        if done:
            break

    print_running_reward += current_ep_reward
    print_running_episodes += 1

    log_running_reward += current_ep_reward
    log_running_episodes += 1

    i_episode += 1

env.close()

# print total training time
print("============================================================================================")
end_time = datetime.now().replace(microsecond=0)
print("Started training at (GMT) : ", start_time)
print("Finished training at (GMT) : ", end_time)
print("Total training time  : ", end_time - start_time)
print("============================================================================================")

trajectory = []
sim_time = []
actions = []
done = False
while not done:
    action = env.action_space.sample()
    state, reward, done, info = env.step(action)
    trajectory.append(state)
    sim_time.append(info["simulation time [s]"])
    actions.append(action)


len(actions)
# Stop the current episode:
env.stop_simulation()

env.close()



