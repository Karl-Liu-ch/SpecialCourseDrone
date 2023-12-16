a=10;
mixmatrix = [-Ly*coefthrust, -Ly*coefthrust, -Ly*coefthrust, -Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, coefthrust;
            coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust, 0];
b = [Lz*total_mass*a;
    total_mass*g];
m = pinv(mixmatrix)*b;
p = m(end)*mixmatrix(1,end)/b(2);
d = total_mass/(platformmass)*(p-Ly-total_cg);
theta = atan(b(1)/Lz/coefthrust/m(end-1));

% a=15;
% mixmatrix = [-Ly*coefthrust, -Ly*coefthrust, -Ly*coefthrust, -Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, Ly*coefthrust, Ly*coefthrust;
%             coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust,coefthrust];
% b = [Lz*total_mass*a;
%     total_mass*g];
% m = pinv(mixmatrix)*b;
% theta = atan(b(1)/Lz/coefthrust/m(end-1))*180/pi;