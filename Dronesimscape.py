from simulink_gym import SimulinkEnv, Observation, Observations
from gym.spaces import Box
from pathlib import Path
import numpy as np
import math
from simulink_gym import logger

# Define example environment:
class Dronesimscape(SimulinkEnv):
    """Classic Cart Pole Control Environment implemented in Matlab/Simulink/Simscape.

    Observation:
        Type: Box(4)
        Num     Observation               Min                     Max
        0       Cart Position             -4.8                    4.8
        1       Cart Velocity             -Inf                    Inf
        2       Pole Angle                -0.418 rad (-24 deg)    0.418 rad (24 deg)
        3       Pole Angular Velocity     -Inf                    Inf

    Actions:
        Type: Discrete(2)
        Num   Action
        0     Push cart to the left
        1     Push cart to the right

        Note: The amount the velocity that is reduced or increased is not
        fixed; it depends on the angle the pole is pointing. This is because
        the center of gravity of the pole increases the amount of energy needed
        to move the cart underneath it

    Reward:
        Reward is 1 for every step taken, including the termination step
    """

    def __init__(
        self,
        model_path = Path(__file__)
            .parent.absolute()
            .joinpath("Dronesimscape.slx"), 
        stop_time: float = 10.0,
        step_size: float = 0.01,
        timestep = 0.01,
        x_0 = 0,
        y_0 = 0,
        z_0 = 1,
        # z_0 = 0.13,
        max_prop = 1000,
        coaxialeff = 450000/(1000**2),
        drag_coefficient = 0.47,
        coefthrust = 5.7199 / (1000**2),
        coeftorque = 0.4008 / (1000**2),
        g = 9.8067,
        startplatform = -0.02,
        startaxis = 0,
        model_debug: bool = False,
    ):
        """Simscape implementation of the classic Cart Pole environment.

        Parameters:
            stop_time: float, default 10
                maximum simulation duration in seconds
            step_size: float, default 0.02
                size of simulation step in seconds
            model_debug: bool, default False
                Flag for setting up the model debug mode (see Readme.md for details)
        """
        super().__init__(
            model_path=model_path,
            model_debug=model_debug,
        )

        # Define action space:
        self.maxprop = max_prop
        self.action_space = Box(low=np.array([-0.03, -math.pi/2, 0, 0, 0, 0, 0, 0, 0, 0],dtype=np.float32),
                               high=np.array([0.4, math.pi/2, max_prop, max_prop, max_prop, max_prop, max_prop, max_prop, max_prop, max_prop],dtype=np.float32),
                               dtype=np.float32)
        
        # Define state and observations:
        self.max_cart_position = 2.4
        max_pole_angle_deg = 12
        self.max_pole_angle_rad = max_pole_angle_deg * math.pi / 180.0
        self.observations = Observations(
            [
                Observation("paxis",-np.inf, np.inf,"paxis_0",self.set_workspace_variable,),
                Observation("vaxis",-np.inf, np.inf,"vaxis_0",self.set_workspace_variable,),
                Observation("platformpose",-np.inf, np.inf,"platformpose_0",self.set_workspace_variable,),
                Observation("px",-np.inf, np.inf,"px_0",self.set_workspace_variable,),
                Observation("vx",-np.inf, np.inf,"vx_0",self.set_workspace_variable,),
                Observation("py",-np.inf, np.inf,"py_0",self.set_workspace_variable,),
                Observation("vy",-np.inf, np.inf,"vy_0",self.set_workspace_variable,),
                Observation("pz",-np.inf, np.inf,"pz_0",self.set_workspace_variable,),
                Observation("vz",-np.inf, np.inf,"vz_0",self.set_workspace_variable,),
                Observation("nRoll",-np.inf, np.inf,"nRoll_0",self.set_workspace_variable,),
                Observation("nPitch",-np.inf, np.inf,"nPitch_0",self.set_workspace_variable,),
                Observation("nYaw",-np.inf, np.inf,"nYaw_0",self.set_workspace_variable,),
                Observation("Roll",-np.inf, np.inf,"Roll_0",self.set_workspace_variable,),
                Observation("Pitch",-np.inf, np.inf,"Pitch_0",self.set_workspace_variable,),
                Observation("Yaw",-np.inf, np.inf,"Yaw_0",self.set_workspace_variable,),
                Observation("Yawrate",-np.inf, np.inf,"Yawrate_0",self.set_workspace_variable,),
            ]
        )

        # Get initial state from defined observations:
        # self.desired_pose = np.random.uniform(low=0.5, high=2, size=(3,))
        self.desired_pose = np.array([0, 0, 2], dtype=np.float32)
        self.state = np.concatenate((self.observations.initial_state, self.desired_pose))

        # Set simulation parameters:
        self.set_model_parameter("StopTime", stop_time)
        self.set_workspace_variable("step_size", step_size)
        # self.set_workspace_variable("timestep", timestep)
        self.set_workspace_variable("x_0", x_0)
        self.set_workspace_variable("y_0", y_0)
        self.set_workspace_variable("z_0", z_0)
        self.set_workspace_variable("max_prop", max_prop)
        self.set_workspace_variable("coaxialeff", coaxialeff)
        self.set_workspace_variable("drag_coefficient", drag_coefficient)
        self.set_workspace_variable("coefthrust", coefthrust)
        self.set_workspace_variable("coeftorque", coeftorque)
        self.set_workspace_variable("g", g)
        self.set_workspace_variable("startplatform", startplatform)
        self.set_workspace_variable("startaxis", startaxis)

    def reset(self):
        # Resample initial state:
        # pose = np.random.uniform(low=-1, high=1, size=(3,))
        # self.set_workspace_variable("x_0", pose[0])
        # self.set_workspace_variable("y_0", pose[1])
        # self.set_workspace_variable("z_0", pose[2]+1)
        self.observations.initial_state = np.random.uniform(
            low=-0.05, high=0.05, size=(16,)
        )

        # Call common reset:
        super()._reset()
        # self.desired_pose = np.random.uniform(low=0.5, high=2, size=(3,))
        self.desired_pose = np.array([0, 0, 2], dtype=np.float32)
        self.state = np.concatenate((self.observations.initial_state, self.desired_pose))

        # Return reshaped state. Needed for use as tf.model input:
        return self.state

    def output2action(self, action):
        action = action + np.array([(0.4+0.03)/2,0,1,1,1,1,1,1,1,1], dtype=np.float32)
        action = action * (np.array([0.43/2, math.pi/2, self.maxprop, self.maxprop, self.maxprop, self.maxprop, self.maxprop, self.maxprop, self.maxprop, self.maxprop], dtype=np.float32))
        action = np.clip(action, a_min=np.array([-0.03, -math.pi/2, 0, 0, 0, 0, 0, 0, 0, 0],dtype=np.float32),
                               a_max=np.array([0.4, math.pi/2, self.maxprop, self.maxprop, self.maxprop, self.maxprop, self.maxprop, self.maxprop, self.maxprop, self.maxprop],dtype=np.float32))
        return action

    def step(self, action):
        """Method for stepping the simulation."""
        action = self.output2action(action)

        state, simulation_time, terminated, truncated = self.sim_step(action)
        state = np.concatenate((state, self.desired_pose))
        axispose = state[0]
        axisvel = state[1]
        platformpose = state[2]
        pose = np.array([state[3], state[5], state[7]])
        vel = np.array([state[4], state[6], state[8]])
        omega = np.array([state[9], state[10], state[11]])
        angular = np.array([state[12], state[13], state[14]])
        yawrate = state[15]
        current_z = state[7]

        # Check all termination conditions:
        done = bool(
            terminated
            or truncated
            # or current_z < -10
            # or np.linalg.norm(self.desired_pose - pose) < 0.01
        )

        # Receive reward for every step inside state and time limits:
        # attitude control reward:
        reward = -np.linalg.norm(omega)
        # reward = - (np.linalg.norm(self.desired_pose - pose) + np.linalg.norm(vel) + np.linalg.norm(omega) + np.linalg.norm(angular))
        # reward = - (np.linalg.norm(self.desired_pose - pose) + np.linalg.norm(angular))
        # hold position reward:
        posereward = 0
        posereward += - np.linalg.norm(self.desired_pose - pose) * 0.01
        posereward += - np.linalg.norm(angular)
        posereward += - np.linalg.norm(action[2:]) * 0.00001
        reward += posereward * 0.001
        
        if np.linalg.norm(self.desired_pose - pose) < 0.01:
            reward += 10

        info = {"simulation time [s]": simulation_time}

        return state, reward, done, info

if __name__ == '__main__':
    logger.setLevel(10)
    env = Dronesimscape(stop_time=30, model_debug=False)
    state = env.reset()