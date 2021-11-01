LIND = ones(200);
LIND(2:2:end, 1:2:end) = 2;
LIND(1:2:end, 2:2:end) = 2;
LMAP = [0, 1, 0; ...
    0, 0, 1];
figure
imshow(LIND, LMAP, 'InitialMagnification', 'fit')