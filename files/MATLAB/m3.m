
% Read the two images
image11 = im2double(image1);
image22 = im2double(image2);

% Calculate the PSNR
psnrValue1 = m2(image11, image22);

% Display the result
fprintf('PSNR between the two images: %0.2f dB\n', psnrValue1);