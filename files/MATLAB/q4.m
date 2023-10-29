filename='Test_1.ppm';
    % Open the file
    fid = fopen(filename, 'r');
    
    % Read magic number
    fgetl(fid);
    
    % Read image size
    imgSize = fscanf(fid, '%d %d', 2);
    
    % Read max color value
    fgetl(fid); fgetl(fid);
    
    % Read image data
    imgData = fread(fid, prod(imgSize)*3, 'uint8');
    
    % Close the file
    fclose(fid);
    
    % Reshape and permute the image data
    img = permute(reshape(imgData, [3 imgSize]), [2 3 1]);

imshow(img);