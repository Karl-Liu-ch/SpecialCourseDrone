dim = 3;

knots = [0, 5, 10, 15, 20]; % knots
order = 8; % polynomial order 
% optimTarget = 'poly-coeff'; % 'poly-coeff' or 'end-derivative'
optimTarget = 'end-derivative'; % 'poly-coeff' or 'end-derivative'
maxConti = 4; % maximally imposed continuity between segment 
objWeights = [0 1 1];  % 1 2 3 th order derivative
pTraj = PolyTrajGen(knots,order,optimTarget,dim,maxConti);
% 2. Pin 
% 2.1 FixPin 
ts = knots; % knots
startpose = [0;0;1];
endpose = [0;0;1];
Xs = [startpose';endpose']';
velocity_init = [0.3;0;0];
acc_init = [0;0;0];
Xdot = velocity_init; % initial velocity
Xddot = acc_init; % initial acceleration

waypoints = [2,2,1;0,4,1;-2,2,1];
pin = struct('t',ts(1),'d',0,'X',Xs(:,1));
pTraj.addPin(pin);
pin = struct('t',ts(1),'d',1,'X',Xdot);
pTraj.addPin(pin);
pin = struct('t',ts(1),'d',2,'X',Xddot);
pTraj.addPin(pin);
pin = struct('t',ts(2),'d',0,'X',waypoints(1,:)');
pTraj.addPin(pin);
pin = struct('t',ts(3),'d',0,'X',waypoints(2,:)');
pTraj.addPin(pin);
pin = struct('t',ts(4),'d',0,'X',waypoints(3,:)');
pTraj.addPin(pin);
pin = struct('t',ts(5),'d',0,'X',Xs(:,2));
pTraj.addPin(pin);
pin = struct('t',ts(5),'d',1,'X',Xdot);
pTraj.addPin(pin);
pin = struct('t',ts(5),'d',2,'X',Xddot);
pTraj.addPin(pin);


pTraj.setDerivativeObj(objWeights); % set the objective function for penalizing the derivatives 
tic
pTraj.solve;
toc
poly_traj= pTraj;

% figh3 = figure(3); clf
% figh4 = figure(4); clf
% titleStr1 = sprintf('poly order : %d / max continuity: %d / ',order,maxConti);
% titleStr2 = [' minimzed derivatives order: ', num2str(find(objWeights > 0))];
% sgtitle(strcat(titleStr1,titleStr2))
% set(figh3,'Position',[193 294 1473 610]);
% plotOrder = 3; % Until 3rd order derivatives 
% pTraj.showTraj(plotOrder,figh3) % plot element-wise trajectory 
% pTraj.showPath(figh4)
% view([-41 33])    
% axis([-1 11 -6 10 0 8])    
% %% Plot 
% figuretitle = '7';
% figh3 = figure(3); clf
% figh4 = figure(4); clf
% titleStr1 = sprintf('poly order : %d / max continuity: %d / ',order,maxConti);
% titleStr2 = [' minimzed derivatives order: ', num2str(find(objWeights > 0))];
% sgtitle(strcat(titleStr1,titleStr2))
% set(figh3,'Position',[193 294 1473 610]);
% plotOrder = 3; % Until 3rd order derivatives 
% pTraj.showTraj(plotOrder,figh3) % plot element-wise trajectory 
% pTraj.showPath(figh4)
% view([-41 33])    
% axis([-1 11 -6 10 0 8]) 
clc
