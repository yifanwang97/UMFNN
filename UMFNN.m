function [NMI, RI, Purity] = UMFNN(dataset, param)

% fuzzy_mapping
fuzzy_images = fuzzy_mapping(dataset.fea, param);
 
% Generate the whole weights and pool_index in the ConvFNN
[W, pool_index] = gen_whole_weights(param);

% Computing process of stacked convolutional and pooling layers
final_pooling_results = stacked_conv_pooling(fuzzy_images, W, pool_index, param);

% Construct the graph Laplacian.
L = laplacian(param, final_pooling_results);

% Compute the weights through eigen decomposition
betas = eigendecomposition(final_pooling_results, L, param);

% Calculate the embedding matrix
E = final_pooling_results*betas; 
if ~isreal(E)
    NMI = 0;
    RI = 0;
    Purity = 0;
    return;
end

% clustering
n_cluster = size(unique(dataset.gnd), 1);
IDX = kmeans(E, n_cluster);

%% evaluate results

% NMI
NMI = compute_NMI(dataset.gnd, IDX)
% Purity
Purity = compute_Purity(IDX, dataset.gnd)
% RI
[AR, RI, MI, HI] = compute_RI(dataset.gnd', IDX')
end


