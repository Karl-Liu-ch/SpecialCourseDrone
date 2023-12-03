x_0 = 0;
y_0 = 0;
z_0 = -0.01;
Gain_p = 0;

dynamicaxisangle = 162.61734029515165 * pi / 180;
neutraldynamicaxis = dynamicaxisangle - pi;
% neutraldynamicaxis = 0;

tube600_mass = 0.038;
tube410_mass = 0.025;
mass_motor = 0.05;
mass_prop = 0.03;
battery_mass = 0.5;
platform_mass = battery_mass + 0.1;
servo_mass = 0.06;
% coaxialeff = 0.45;
coaxialeff = 0.25;
coefthrust = 12.7108 / (1000^2);
coeftorque = 0.4008 / (1000^2);