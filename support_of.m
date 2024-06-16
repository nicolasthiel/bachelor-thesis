function sp_B = support_of(B)
% Finds the support of a boolean matrix B.
% INPUT:
%   A - a boolean matrix
% OUTPUT:
%   sp_A - the support of B

    sp_B = cell(1, size(B, 2));
    for col = 1:size(B, 2)
        sp_B{col} = find(B(:, col));
    end
end