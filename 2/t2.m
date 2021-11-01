BORDER = 30;
PATH = "FOLDER_PATH";
LIMG = imread(PATH+"\flowers-fhd.jpg");

LIMG(:, 1:BORDER, [1, 3]) = 0;
LIMG(:, 1:BORDER, 2) = 255; % left

LIMG(1:BORDER, :, [1, 3]) = 0;
LIMG(1:BORDER, :, 2) = 255; % up

LIMG(:, end-BORDER+1:end, [1, 3]) = 0;
LIMG(:, end-BORDER+1:end, 2) = 255; % right

LIMG(end-BORDER+1:end, :, [1, 3]) = 0;
LIMG(end-BORDER+1:end, :, 2) = 255; % bottom

figure
imshow(LIMG, 'InitialMagnification', 'fit')