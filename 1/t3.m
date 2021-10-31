L1 = [0:(1 / 49):1];
L1 = L1' * L1; % 1 bottom right
L2 = flipud(L1); % 1 upper right
L3 = fliplr(L1); % 1 bottom left
LOUT = vertcat(L1, L2, L3);
figure
imshow(LOUT, 'InitialMagnification', 'fit')