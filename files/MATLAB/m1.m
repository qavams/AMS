image1 = imread('orig_barb.jpg');
image2 = imread('comp_barb.jpg');

% Convert the images to double precision
image1 = im2double(image1);
image2 = im2double(image2);

% Calculate the PSNR
psnrValue = psnr(image1, image2);

% Display the result
fprintf('PSNR between the two images: %0.2f dB\n', psnrValue);