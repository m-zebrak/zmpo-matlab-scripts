PATH = "FOLDER_PATH";

L1 = imread(PATH+"\input.bmp"); % monochromatic bitmap
L2 = imread('cameraman.tif');
L1 = double(L1);
L2 = double(L2)/255;
disp(min(L1,1));

L3 = L1 * 0.01 + L2 * 0.99;
figure
imshow(L3);
imwrite(L3, PATH+"\output.bmp");