LR = [1; 0; .5; 0];
LG = [0; 1; .5; 0];
LB = [0; 0; .5; 0];
LOUT = cat(3, LR, LG, LB);
figure
imshow(LOUT, 'InitialMagnification', 'fit')