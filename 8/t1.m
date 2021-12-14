PATH = "FOLDER_PATH";
images = PATH + "\images";
resized = PATH + "\resized\";

cd images;
d = dir;
%d(1).name .
%d(2).name ..
%d(3).name 1.jpeg
matrix = [];
for i = 3:size(d, 1)
    disp("changing: "+d(i).name)
    L1 = imread(d(i).name);
    L2 = imresize(L1, [20, 20]);
    L3 = rgb2gray(L2);
    filename = resized + mat2str(i-2) + ".jpeg";
    imwrite(L3, filename)
    srednia = double(mean(L3(:))) / 255;
    matrix = [matrix; [i - 2, srednia]];
end

matrix
save('..\wynik', 'matrix')