PATH = "FOLDER_PATH";

L1 = imread(PATH + "\output.bmp");
L2 = imread('cameraman.tif');
L1 = double(L1)/255;
L2 = double(L2)/255;


L3 = (L2-L1*0.99)*100;
figure
imshow(L3);
