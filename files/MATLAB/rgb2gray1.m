colorImage = imread('Test_3.ppm');
grayImage = convertToGrayscale(colorImage);
imshow(grayImage);
imwrite(grayImage,'Test_3S.ppm');