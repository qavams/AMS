function MSE = My_MSE(Original_Image, Reconstructed_Image)

    % Convert to double 
    Original_Image = im2double(Original_Image);
    Reconstructed_Image = im2double(Reconstructed_Image);

    % Calculate SE
    SquaredError = (Original_Image - Reconstructed_Image).^2;
    
    % Compute MSE
    MeanSE = mean(SquaredError(:));
    
    % Calculation colors
    if size(Original_Image, 3) > 1  % RGB
        Pixels = size(Original_Image, 1) * size(Original_Image, 2) * size(Original_Image, 3);
    else
        Pixels = numel(Original_Image); % OTHER
    end

    MSE = MeanSE * Pixels;

end

