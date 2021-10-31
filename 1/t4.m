L1 = [0:(1 / 49):1];
L1 = L1' * L1; % 1 bottom right
L2 = flipud(L1); % 1 upper right
LLEFT = vertcat(L1, L2); % concatenate vertically
LRIGHT = fliplr(LLEFT); % reflection relative to the cols (Y axis)
LOUT = horzcat(LLEFT, LRIGHT); % concatenate horizontally
figure
imshow(LOUT, 'InitialMagnification', 'fit')