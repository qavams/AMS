
function entropy = My_Entropy(Input_Data)

    % Probability distribution
    prob = histcounts(Input_Data, 'Normalization', 'probability');
    
    % Remove zeros 
    prob_nonzero = prob(prob > 0);
    
    % Calculate ENT
    entropy = -sum(prob_nonzero .* log2(prob_nonzero));

end
