PATH = "FOLDER_PATH";
LIMG = imread(PATH+"\flowers-fhd.jpg");
LIMG2 = imread(PATH+"\powder-612x612.jpg");
LIMG = double(LIMG) / 255;
LIMG2 = double(LIMG2) / 255;

LIMG = LIMG(1:size(LIMG2, 1), 1:size(LIMG2, 2), :); % resize
LOUT = LIMG * .5 + LIMG2 * .5; % half of each
figure
imshow(LOUT, 'InitialMagnification', 'fit')