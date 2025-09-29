function [fuzzy_images] = fuzzy_mapping(fea, param)
% weight_local and fuzzy_images are for computing the fully_connected weights
% center and delta are parameters in fuzzy membership function for testing datasets

% Select several pixel values with large variances 
std_fea = std(fea,0,1);
[sort_fea,index_fea] = sort(std_fea);
fea_sub = fea(:,index_fea(end-(param.D_ref-1):end));

% Use fuzzy c-means clustering compute the fuzzy membership degree of each data point in each cluster
[center,u_n_k,obj_fcn] = fcm(fea_sub, param.rule_num);

% Computing the normalized firing strength
norm_u_k = norm_firing_strength(fea_sub, param, center, u_n_k);

% Generate the fuzzy images
fuzzy_images = gen_fuzzy_images(fea, param, norm_u_k);


end