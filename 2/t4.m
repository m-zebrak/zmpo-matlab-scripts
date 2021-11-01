PATH = "FOLDER_PATH";
LIMG = imread(PATH+"\flowers-fhd.jpg");
LIMG = double(LIMG) / 255;

LDARK = LIMG - .5;
LDARK(LDARK < 0) = 0; % if <0 then 0

LLIGHT = LIMG + .5;
LLIGHT(LLIGHT > 1) = 1; % if >1 then 1

figure
imshow(LLIGHT, 'InitialMagnification', 'fit')
figure
imshow(LDARK, 'InitialMagnification', 'fit')