function grayImage = convertToGrayscale(image)
    % Splitting
    R = image(:, :, 1);
    G = image(:, :, 2);
    B = image(:, :, 3);

    % Convert to grayscale
    grayImage = 0.299 * R + 0.587 * G + 0.114 * B;
end