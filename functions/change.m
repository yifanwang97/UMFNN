function [U_IDX, U_ref] = change(gnd, IDX)
% transform the clustering results to 01 matrix
% Input
% IDX: the result returned by kmeans
% Output
% U_IDX: transform the IDX to 01 matrix

N = size(IDX, 1 );    % the number of smaples
cluster = unique(IDX);    
n_cluster = length(cluster);    % the number of clusters

U_IDX = zeros(n_cluster, N);    
for i = 1:n_cluster
    position = find(IDX == i);
    U_IDX(i, position) = 1;
end

n_data = size(gnd,1);
label_set = unique(gnd);
U_ref = zeros(n_cluster,n_data);
for i=1:n_cluster
    ind = find(gnd == label_set(i));
    U_ref(i,ind) = 1;
end
