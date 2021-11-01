PATH = "FOLDER_PATH";
LIMG = imread(PATH+"\flowers-fhd.jpg");
LIMG = double(LIMG) / 255;

LIMG(1:2:end, 1:2:end, [1, 3]) = 0;
LIMG(1:2:end, 1:2:end, 2) = 1;

LIMG(2:2:end, 2:2:end, [1, 3]) = 0;
LIMG(2:2:end, 2:2:end, 2) = 1;

figure
imshow(LIMG, 'InitialMagnification', 'fit')