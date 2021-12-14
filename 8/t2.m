PATH = "D:\STUDIA\1mojepliki\5 sem\MATLAB\7";
SIZE = 20;

mat = load(PATH + "\matrix.mat");
mat = mat.matrix;

L1 = imread('cameraman.tif');
L1 = double(L1) / 255;
%L1 = imresize(L1, [100, 100]);

L2 = zeros(size(L1)*SIZE);

for m = 1:size(L1, 1)
    for n = 1:size(L1, 2)
        disp(m);
        disp(n);

        mni = L1(m, n);
        mat2 = [mat, abs(pam(:, 2)-mni)];
        mat_sorted = sortrows(mat2, 3);

        filename = PATH + "\resized\" + mat2str(mat_sorted(1, 1)) + ".jpeg";
        Li = imread(filename);
        L2(((m - 1) * SIZE + 1):(m * SIZE), ((n - 1) * SIZE + 1):(n * SIZE)) = Li;
    end
end


imwrite(uint8(L2), PATH + "\out.jpeg");
