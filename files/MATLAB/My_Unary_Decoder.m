
function My_Unary_Decoder(Compressed_Filename_and_Path, Reconstructed_Filename_and_Path)
    % Read the compressed file
    fileID = fopen(Compressed_Filename_and_Path, 'r');
    binary_string = fread(fileID, '*char');
    fclose(fileID);
    
    % Perform unary decoding to reconstruct the original data
    reconstructed_data = [];
    current_value = 0;
    for i = 1:numel(binary_string)
        if binary_string(i) == '1'
            current_value = current_value + 1;
        else
            reconstructed_data = [reconstructed_data, current_value];
            current_value = 0;
        end
    end
    
    % Write the reconstructed data to the output file
    imwrite(uint8(reconstructed_data), Reconstructed_Filename_and_Path);
end