L1 = [0:(1 / 49):1];
L1 = L1' * L1; % 1 bottom right
L2 = L1(end:-1:1, :); % 1 upper right
LLEFT = [L1; L2]; % concatenate vertically
LRIGHT = LLEFT(:, end:-1:1); % reflection relative to the cols (Y axis)
LOUT = [LLEFT, LRIGHT]; % concatenate horizontally
figure
imshow(LOUT, 'InitialMagnification', 'fit')