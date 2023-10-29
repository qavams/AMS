original = imread('Test_3.ppm');
reconstructed = imread('Test_3S.ppm');

mse_value = My_PSNR(original, reconstructed);
disp(['MSE: ', num2str(mse_value)]);

%data = [1 1 2 2 3 3 3 3];
%entropy_value = My_Entropy(data);
%entropy_value = My_Entropy(original);
%disp(entropy_value);