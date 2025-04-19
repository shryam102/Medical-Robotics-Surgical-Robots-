function x = Transform(theta,phi,l)

if theta == 0
    x = [Rz(phi), [0;0;0]; 0 0 0 1]*[Ry(theta), l*[0; 0; 1]; 0 0 0 1]*[Rz(-phi), [0;0;0]; 0 0 0 1];
else
    r = l/theta;

    x = [Rz(phi), [0;0;0]; 0 0 0 1]*[Ry(theta), r*[(1 - cos(theta)); 0; sin(theta)]; 0 0 0 1]*[Rz(-phi), [0;0;0]; 0 0 0 1];

end
