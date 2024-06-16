function B = boolean_expression_matrix(A_SD, A_SR, lower_percentile, upper_percentile)
% Builds a boolean matrix describing which gene is differentially expressed
% in which sample based on percentiles
% INPUT:
%   A_SD - expression matrix of diseased samples
%   A_SR - expression matrix of reference samples
%   lower_percentile
%   upper_percentile
    
    B = false(size(A_SD));
    
    p_lower = prctile(A_SR, lower_percentile, 2);
    p_upper = prctile(A_SR, upper_percentile, 2);
    
    for i = 1:size(A_SD, 1)
        for j = 1:size(A_SD, 2)
            if A_SD(i, j) <= p_lower(i) || A_SD(i, j) >= p_upper(i)
                B(i, j) = true;
            end
        end
    end
end