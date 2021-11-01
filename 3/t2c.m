L1 = imread('cameraman.tif');

for i = .9:-.1:.1
    L2 = imresize(L1, i);
    L3 = imrotate(L2, i/.9*100, 'crop');
    x = round((size(L1, 1) - size(L3, 1))/2);
    y = round((size(L1, 2) - size(L3, 2))/2);
    L1(x:(size(L3, 1) + x - 1), y:(size(L3, 2) + y - 1)) = L3;
    imshow(L1, 'InitialMagnification', 'fit');
end