PATH = "FOLDER_PATH";
LIMG = imread(PATH+"\flowers-fhd.jpg");
LIMG(:, 1:end/2, [1, 2]) = 0;
LIMG(:, 1:end/2, 3) = 255;
figure
imshow(LIMG, 'InitialMagnification', 'fit')