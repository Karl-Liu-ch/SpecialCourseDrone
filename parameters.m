clear;
clc;
x_0 = 0;
y_0 = 0;
z_0 = 1;
timestep = 0.01;
dynamicaxisangle = 162.61734029515165 * pi / 180;
neutraldynamicaxis = dynamicaxisangle - pi;
max_prop = 10;
coaxialeff = 450000/(max_prop^2);
drag_coefficient = 0.47;
coefthrust = 5.7199 / (max_prop^2);
coeftorque = 0.4008 / (max_prop^2);
total_mass = 2.1309;
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
    1,1,1,1,1,1,1,1];
controlmatrix = pinv(controlmatrix);
save('parameters.mat');