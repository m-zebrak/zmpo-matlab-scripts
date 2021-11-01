L1 = zeros(200);
L1(1:2:end, 1:2:end, 2) = 1;
L1(2:2:end, 2:2:end, 2) = 1;
L1(:, :, 3) = 1 - L1(:, :, 2);
%L1(2:2:end, 1:2:end, 3) = 1; %same as line no. 4
%L1(1:2:end, 2:2:end, 3) = 1;
figure
imshow(L1, 'InitialMagnification', 'fit')