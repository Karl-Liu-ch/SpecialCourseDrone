function trasformmetrix = Transform(e)
phi = e(3);
theta = e(2);
% roll = [1 0 0
%         0 cos(phi) sin(phi)
%         0 -sin(pht) cos(phi)];
% pitch = [cos(theta) 0 -sin(theta)
%         0 1 0
%         sin(theta) 0 cos(theta)];
trasformmetrix = [1 0 -sin(theta)
    0 cos(phi) cos(theta)*sin(phi)
    0 -sin(phi) cos(theta)*cos(phi)
    ];
end