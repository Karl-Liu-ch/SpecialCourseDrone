clear;
clc;
x_0 = 0;
y_0 = 0;
z_0 = 0.13;
step_size = 0.001;
timestep = step_size;
max_prop = 1000;
coaxialeff = 450000/(max_prop^2);
drag_coefficient = 0.47;
coefthrust = 5.7199 / (max_prop^2);
coeftorque = 0.4008 / (max_prop^2);
body_mass = 1.293206194642505;
body_cg = -0.1036;
platformmass = 0.7712;
platformcg = -0.1558;
total_mass = 2.1309;
total_cg = (body_cg*body_mass+platformcg*platformmass) / (body_mass+platformmass);
g = 9.8067;
% g = 0;
startplatform = -0.02;
startaxis = 0;
I = [0.0283    0.0003    0.0072
    0.0003    0.5210   -0.0001
    0.0072   -0.0001    0.5424];
% I = [0.0283    0    0
%     0    0.5516   0
%     0   0    0.5731];
Lx = 0.36 / 2;
Ly = 0.26 / 2; 
% controlmatrix = [Lx*coefthrust, -Lx*coefthrust, -Lx*coefthrust, Lx*coefthrust;
%     -Ly*coefthrust, -Ly*coefthrust, Ly*coefthrust, Ly*coefthrust;
%     coeftorque, -coeftorque, coeftorque, -coeftorque;
%     1,1,1,1];
% controlmatrix = inv(controlmatrix);
controlmatrix = [Lx*coefthrust, Lx*coefthrust, -Lx*coefthrust, -Lx*coefthrust, -Lx*coefthrust, -Lx*coefthrust, Lx*coefthrust, Lx*coefthrust;
    -Ly*coefthrust, -Ly*coefthrust, -Ly*coefthrust, -Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, Ly*coefthrust;
    coeftorque, -coeftorque, -coeftorque, coeftorque, coeftorque, -coeftorque, -coeftorque, coeftorque;
    coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust];
controlmatrix = pinv(controlmatrix);
Lz = 0.0221;
M.total_mass = total_mass;
M.platformmass = platformmass;
M.total_cg = total_cg;
M.platformcg = platformcg;
M.Lx = Lx;
M.Ly = Ly;
M.Lz = Lz;
M.coefthrust = coefthrust;
M.coeftorque = coeftorque;
M_info = Simulink.Bus.createObject(M);
M_bus = evalin('base', M_info.busName);
route = [0 0 1 0.5*pi
        0 3 1 0.5*pi
        -3 3 1 0.5*pi
        -3 4 1 0
        3 4 1 0];
save('parameters.mat');