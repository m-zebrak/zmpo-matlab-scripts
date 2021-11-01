PATH = "FOLDER_PATH";
LIMG = imread(PATH+"\flowers-fhd.jpg");
LIMG2 = imread(PATH+"\powder-612x612.jpg");
LIMG = double(LIMG) / 255;
LIMG2 = double(LIMG2) / 255;

if size(LIMG, 1) >= size(LIMG2, 1)
    if size(LIMG, 2) >= size(LIMG2, 2)
        LIMG = LIMG(1:size(LIMG2, 1), 1:size(LIMG2, 2), :); % if first one id higher and wider - cut 1 on rows and cols
    else
        LIMG = LIMG(1:size(LIMG2, 1), :, :); % if first one is higher - cut 1 on rows but narrower
        LIMG2 = LIMG2(:, 1:size(LIMG, 2), :); % - cut 2 on cols
    end
else
    if size(LIMG, 2) >= size(LIMG2, 2)
        LIMG = LIMG(:, 1:size(LIMG2, 2), :); % if first one is lower and wider - cut 1 on cols
        LIMG2 = LIMG2(1:size(LIMG, 1), :, :);% - cut 2 on rows
    else
        LIMG2 = LIMG2(1:size(LIMG, 1), 1:size(LIMG, 2), :); % if first one is lower and narrower - cut 2 on on rows and cols
    end
end

LOUT = LIMG * .5 + LIMG2 * .5; % half of each
figure
imshow(LOUT, 'InitialMagnification', 'fit')