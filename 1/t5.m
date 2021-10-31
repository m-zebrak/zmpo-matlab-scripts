L1 = [0:(1 / 49):1];
L1 = L1' * L1; % 1 bottom right
L2 = L1(end:-1:1, :); % 1 upper right - reflection relative to the rows (X axis)
L3 = L1(:, end:-1:1); % 1 bottom left -  reflection relative to the cols (Y axis)
LG = [L1; L2; L3]; % concatenate vertically
LR = zeros([150, 50]);
LB = zeros([150, 50]);
LOUT = cat(3, LR, LG, LB);
figure
imshow(LOUT, 'InitialMagnification', 'fit')