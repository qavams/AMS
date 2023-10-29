fid = fopen('Test_1.ppm', 'r');
if fid == -1
    error('Failed to open file');
end

header = fgetl(fid);
headerParts = split(header, ' ');


width = str2double(headerParts{2});
height = str2double(headerParts{3});
maxPixelValue = str2double(headerParts{4});

% Read pixel data as uint8
pixel_data = fread(fid, width * height*3 , '*uint8'); 
fclose(fid);

% Reshape pixel data into an image matrix
image_data = reshape(pixel_data, width, height, 3);

% Transpose image matrix to correct dimensions
image_data = permute(image_data, [2 1 3]);

% Display the image
imshow(image_data);