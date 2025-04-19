function X = position_vector(theta,n,phi,l,T)

t = linspace(0,theta,n);
X = zeros(3,n);

if theta ==0
    L = linspace(0,l,n);
    for i = 1:n
        Transform_matrix = T*[Rz(phi), [0;0;0]; 0 0 0 1]*[Ry(theta), [0; 0; L(i)]; 0 0 0 1]*[Rz(-phi), [0;0;0]; 0 0 0 1];
        X(:,i) = Transform_matrix(1:3,4);
    end
else 
    r = l/theta;
    for i = 1:n
        Transform_matrix = T*[Rz(phi), [0;0;0]; 0 0 0 1]*[Ry(t(i)), r*[(1 - cos(t(i))); 0; sin(t(i))]; 0 0 0 1]*[Rz(-phi), [0;0;0]; 0 0 0 1];
        X(:,i) = Transform_matrix(1:3,4);
    end

end 

