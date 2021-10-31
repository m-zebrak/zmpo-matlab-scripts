PATH = "FOLDER_PATH";
LIMG = imread(PATH+"\flowers-fhd.jpg");
LR = LIMG(:, :, 1);
LG = LIMG(:, :, 2);
LB = LIMG(:, :, 3);
LOUT = cat(3, LB, LG, LR);
figure
imshow(LOUT, 'InitialMagnification', 'fit')