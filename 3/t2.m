L1 = imread('cameraman.tif');

for i = .9:-.1:.1
    L2 = imresize(L1, i);
    L1(1:size(L2, 1), 1:size(L2, 2)) = L2;
    imshow(L1, 'InitialMagnification', 'fit');
end