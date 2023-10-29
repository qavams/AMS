% Define the file name
filename = 'Test_1.ppm';

% Open the file in binary mode
fid = fopen(filename, 'rb');

% Read the magic number
magic = fgetl(fid);

% Read the image dimensions

%width = dims(1);
%height = dims(2);
header = fgetl(fid);
headerParts = split(magic, ' ');


width = str2double(headerParts{2});
height = str2double(headerParts{3});
maxPixelValue = str2double(headerParts{4});

% Read the maximum color value
maxval = maxPixelValue;

% Skip the single whitespace character
fread(fid, 1);

% Read the pixel data as unsigned bytes
data = fread(fid, [3, width * height], 'uint8');

% Close the file
fclose(fid);

% Reshape and transpose the data to get the image matrix
img = reshape(data, [3, width, height]);
img = permute(img, [3, 2, 1]);

% Display the image
imshow(img);
