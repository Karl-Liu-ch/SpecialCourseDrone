x_0 = 0;
y_0 = 0;
z_0 = 1;
Gain = 4;
dynamicaxisangle = 162.61734029515165 * pi / 180;
neutraldynamicaxis = dynamicaxisangle - pi;
% coaxialeff = 0.45;
coaxialeff = 4500;
drag_coefficient = 0.47;
% coefthrust = 5.7199 / (1000^2);
% coeftorque = 0.4008 / (1000^2);
coefthrust = 5.7199 / (10^2);
coeftorque = 0.4008 / (10^2);
total_mass = 2.1354;
g = 9.8067;
I = [0.2890    0.0372   -0.0753
    0.0372    0.2320    0.0977
   -0.0753    0.0977    0.1476];
I_inv = [4.8708   -2.5337    4.1620
   -2.5337    7.2942   -6.1208
    4.1620   -6.1208   12.9499];
I_xx = 0.2890;
I_yy = 0.2320;
I_zz = 0.1476;
Lx = 0.36 / 2;
Ly = 0.26 / 2;
% controlmatrix = [-Lx*coefthrust, -Lx*coefthrust, Lx*coefthrust, Lx*coefthrust;
%     -Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, -Ly*coefthrust;
%     coeftorque, -coeftorque, coeftorque, -coeftorque;
%     1,1,1,1];
% controlmatrix = inv(controlmatrix);
controlmatrix = [Lx*coefthrust, Lx*coefthrust, -Lx*coefthrust, -Lx*coefthrust, -Lx*coefthrust, -Lx*coefthrust, Lx*coefthrust, Lx*coefthrust;
    -Ly*coefthrust, -Ly*coefthrust, -Ly*coefthrust, -Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, Ly*coefthrust;
    coeftorque, -coeftorque, -coeftorque, coeftorque, coeftorque, -coeftorque, -coeftorque, coeftorque;
    1,1,1,1,1,1,1,1];
controlmatrix = pinv(controlmatrix);