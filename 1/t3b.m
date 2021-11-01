L1 = [0:(1 / 49):1];
L1 = L1' * L1; % 1 bottom right
L2 = L1(end:-1:1, :); % 1 upper right - reflection relative to the rows (X axis)
L3 = L1(:, end:-1:1); % 1 bottom left -  reflection relative to the cols (Y axis)
LOUT = [L1; ...
    L2; ...
    L3]; % concatenate vertically
figure
imshow(LOUT, 'InitialMagnification', 'fit')