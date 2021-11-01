PATH = "FOLDER_PATH";
LIMG = imread(PATH+"\flowers-fhd.jpg");
LIMG = double(LIMG) / 255;

LIMG(:, :, 2) = LIMG(:, :, 1);
LIMG(:, :, 3) = LIMG(:, :, 1);
figure
imshow(LIMG, 'InitialMagnification', 'fit')