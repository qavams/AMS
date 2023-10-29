function psnrValue = m2(image1, image2)
    % Convert the images to double precision
    image1 = im2double(image1);
    image2 = im2double(image2);
    
    % Calculate the mean squared error (MSE)
    mse = mean((image1(:) - image2(:)).^2);
    
    % Set the maximum possible pixel value
    maxPixelValue = 1.0;
    
    % Calculate the PSNR using the formula: PSNR = 20 * log10(MAX / sqrt(MSE))
    psnrValue = 20 * log10(maxPixelValue / sqrt(mse));
end
