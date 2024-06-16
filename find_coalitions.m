function [coalitions, num_coalitions] = find_coalitions(sp_B)
% Finds the distinct sets in sp_B(k) for all k.
% INPUT:
%   sp_B - cell array containing subsets
% OUTPUT:
%   coalitions - cell array contianing the distinct subsets / coalitions
%   num_coalitions - the number of distinct subsets / coalitions

    coalitions = sp_B(1);
    for i = 1:numel(sp_B)
        if isempty(sp_B{i}) % Skip if emptyset
            continue;
        end
        toAppend = true;
        for j = 1:numel(coalitions)
            if isequal(coalitions{j}, sp_B{i})
                toAppend = false;
                break;
            end
        end
        if toAppend
            coalitions{end+1} = sp_B{i};
        end
    end
    num_coalitions = length(coalitions);
end