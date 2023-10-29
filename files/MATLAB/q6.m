MyFile = fopen('Test_3.ppm', 'r');

% Type checking
Magic_num = fscanf(MyFile, '%s', 1);
if ~strcmp(Magic_num, 'P6')
    error('Your file is incorrect!');
end

% Get file header
W = fscanf(MyFile, '%d', 1);
H = fscanf(MyFile, '%d', 1);
MaxVal = fscanf(MyFile, '%d', 1);

% Read and Reshaping
Pixels = uint8(fread(MyFile, H * W * 3, 'uint8'));
Reshaped = permute(reshape(Pixels, [ 3 , W , H ]), [3,2,1]);

%Change channels:
R = Reshaped(:, :, 1);
G = Reshaped(:, :, 2);
B = Reshaped(:, :, 3);
NewIMG = cat(3, G,B, R);

imshow(NewIMG);