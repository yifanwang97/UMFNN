function [betas] = eigendecomposition ( H, L, param)
%% this function is to get the eigen in the embedding space using eigendocomposition 
% the number of formulation is in GaoHuang's paper
% Input
% H: the pooling images in layer layer
% 

[N, Nh] = size(H);
if N>Nh
    A = param.lambda*eye(Nh) + H'*L*H;                % after the formulation (21) in "where"
    B = H'*H;                                  % after the formulation(21) in "where"
    [V,D] = eig(A,B);                          % formulation(20)
    [~,index] = sort(diag(D),'ascend');        % D is eigenvalues 
    V = V(:,index(2:param.n0+1));                    % smallest param.n0 eigenvectors of (20) corresponding to the smallest param.n0 "D"
    for i = 1:param.n0
        temp = H*V(:,1);
        betas(:,i) = V(:,i)/sqrt(temp'*temp);  % normalized eigenvectors in formulation (22)
    end
end

if N<=Nh
    A = param.lambda*eye(N) + L*H*H';
    B = H*H';
    [U,D] = eig(A,B);
    [~,index] = sort(diag(D),'ascend');
    U = U(:,index(2:param.n0+1));         % remove the first eigenvector
    %U = U(:,index(1:param.n0));         
    for i = 1:param.n0
        temp = H*H'*U(:,i);
        betas_vector(:,i) = U(:,i)/sqrt(temp'*temp); 
    end
    betas = H'*betas_vector;
end
    
end
