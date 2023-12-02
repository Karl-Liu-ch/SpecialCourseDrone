function trasformmetrix = Transform(phi, theta, psi)
trasformmetrix = [1 0 -sin(theta)
    0 cos(phi) cos(theta)*sin(phi)
    0 -sin(phi) cos(theta)*cos(phi)
    ];
end