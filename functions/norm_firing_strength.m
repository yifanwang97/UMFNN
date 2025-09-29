function [norm_u_k] = norm_firing_strength(fea_sub, param, center, u_n_k)

% Compute the kernel width in Gaussian fuzzy membership function
[data_num, D_ref] = size(fea_sub);
for i = 1: param.rule_num
    center_repmat = repmat(center(i, :), data_num, 1);
    u_i = u_n_k(i, :);
    u_n_k_repmat = repmat(u_i', 1, D_ref);
    sum1 = sum((fea_sub - center_repmat).^2.*u_n_k_repmat, 1);
    sum2 = sum(u_n_k_repmat);
    % delta is the kernel width
    delta(i, :) = param.theta * sum1./sum2;
end

% Compute the firing strength
for i = 1: param.rule_num
    center_repmat = repmat(center(i, :), data_num, 1);
    delta_repmat = repmat(delta(i, :), data_num, 1);
    % Gaussian fuzzy membership degree
    u_k_d = exp(-(fea_sub - center_repmat).^2./(2*delta_repmat));
    % Compute the firing strength
    u_k(:, i) = prod(u_k_d, 2);
end

% Compute the normalized firing strength
sum_u_k = sum(u_k,2);
norm_u_k = u_k./repmat(sum_u_k, 1, param.rule_num);


end