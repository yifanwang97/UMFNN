function [fuzzy_images] = gen_fuzzy_images(fea, param, norm_u_k)
% Transform the raw images into fuzzy images

pixel_num = size(fea, 2);
fuzzy_images = cell(param.rule_num, 1);

for i = 1: param.rule_num
    norm_u_i = norm_u_k(:, i);
    norm_u_i_repmat = repmat(norm_u_i, 1, pixel_num);
    fuzzy_images{i, 1} = fea.*norm_u_i_repmat;
end

end