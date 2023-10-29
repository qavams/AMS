function psnrValue = My_PSNR(Original_Image, Reconstructed_Image)

     % Calculate (MSE)
     mse = My_MSE(Original_Image, Reconstructed_Image);
    
     % Convert to double
     maxPixelValue1 = double(max(Original_Image(:)));
     maxPixelValue2 = double(max(Reconstructed_Image(:)));
    
     maxPixelValue = max(maxPixelValue1, maxPixelValue2);

     % Calculate the PSNR value
     psnrValue = 10 * log10(maxPixelValue^2 / mse);

end