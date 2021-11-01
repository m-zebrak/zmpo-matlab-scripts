L1 = imread('cameraman.tif');

for i = .9:-.1:.1
    L2 = imresize(L1, i);
    x = round((size(L1, 1) - size(L2, 1))/2);
    y = round((size(L1, 2) - size(L2, 2))/2);
    L1(x:(size(L2, 1) + x - 1), y:(size(L2, 2) + y - 1)) = L2; % paste in the middle
    imshow(L1, 'InitialMagnification', 'fit');
end