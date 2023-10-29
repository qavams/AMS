image1 = imread('Image55.gif', 'r');
image2 = imread('Image18.gif', 'r');
%err3 = immse(image1,image2);
%A = imnoise(image1,'salt & pepper', 0.02);
%err = immse(A, image1);
mse1 = mean((image1(:) - image2(:)).^2);
fprintf('\n The mean-squared error is %0.4f\n', mse1);