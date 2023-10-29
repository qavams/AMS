function CR = My_Unary_Encoder(Original_Filename_and_Path, Compressed_Filename_and_Path)
    % Read the original file
    original_data = imread(Original_Filename_and_Path);
    
    % Convert the original data to a binary string using unary encoding
    binary_string = '';
    for i = 1:numel(original_data)
        binary_string = strcat(binary_string, repmat('1', 1, original_data(i)));
        binary_string = strcat(binary_string, '0');
    end
    
    % Write the binary string to a compressed file
    fileID = fopen(Compressed_Filename_and_Path, 'w');
    fwrite(fileID, binary_string, 'ubit1');
    fclose(fileID);
    
    % Calculate compression rate
    original_file_info = dir(Original_Filename_and_Path);
    compressed_file_info = dir(Compressed_Filename_and_Path);
    original_file_size = original_file_info.bytes;
    compressed_file_size = compressed_file_info.bytes;
    CR = original_file_size / compressed_file_size;
end