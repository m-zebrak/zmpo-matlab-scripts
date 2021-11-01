BORDER = 30;
PATH = "FOLDER_PATH";
LIMG = imread(PATH+"\flowers-fhd.jpg");
LIMG = double(LIMG) / 255;

LIMG(:, 1:end/2, [1, 2]) = 0;
LIMG(:, 1:end/2, 3) = 1;

LIMG(:, 1:BORDER, [1, 3]) = 0;
LIMG(:, 1:BORDER, 2) = 1; % left

LIMG(1:BORDER, :, [1, 3]) = 0;
LIMG(1:BORDER, :, 2) = 1; % up

LIMG(:, end-BORDER+1:end, [1, 3]) = 0;
LIMG(:, end-BORDER+1:end, 2) = 1; % right

LIMG(end-BORDER+1:end, :, [1, 3]) = 0;
LIMG(end-BORDER+1:end, :, 2) = 1; % bottom

figure
imshow(LIMG, 'InitialMagnification', 'fit')