%funkcja 1
function f1(i)
global h L1 L2 L3 L4 m

cbox1 = get(h(2), 'Value'); %first checkbox
cbox2 = get(h(3), 'Value'); %second checkbox
list = get(h(4), 'Value');

if i == 1 %first checkbox
    set(h(3), 'Value', 0); %second checkbox
    L3 = L1;
elseif i == 2 %second checkbox
    set(h(2), 'Value', 0); %first checkbox
    L3 = L2;
end


if i == 3

    if list > 1
        if list == 2
            m = [1, 2, 1; 0, 0, 0; -1, -2, -1]; %sobel 0
        elseif list == 3
            m = [2, 1, 0; 1, 0, -1; 0, -1, -2]; %sobel 45
        elseif list == 4
            m = [1, 0, -1; 2, 0, -2; 1, 0, -1]; %sobel 90
        elseif list == 5
            m = [0, -1, -2; 1, 0, -1; 2, 1, 0]; %sobel 135
        elseif list == 6
            %m = [0, 1, 0; 1, -4, 1; 0, 1, 0]; %laplacian
            m = [1, 1, 1; 1, -8, 1; 1, 1, 1];
        elseif list == 7 %median
            m = [19, 19];
        elseif list == 8
            m = [29, 29];
        elseif list == 9 %averaging
            m = ones(19);
        elseif list == 10
            m = ones(29);
        end

        LR = L3(:, :, 1);
        LG = L3(:, :, 2);
        LB = L3(:, :, 3);
        LR = conv2(LR, m, 'same');
        LG = conv2(LG, m, 'same');
        LB = conv2(LB, m, 'same');

        if list < 7
            L4 = cat(3, LR, LG, LB);
        elseif list == 7 || list == 8 % median
            LR = medfilt2(LR, m);
            LG = medfilt2(LG, m);
            LB = medfilt2(LB, m);
            L4 = cat(3, LR, LG, LB);
        elseif list == 9 || list == 10 %averaging
            L4 = cat(3, LR, LG, LB);
            L4 = L4 / sum(sum(m));
        end

        L4 = mat2gray(L4);
        set(h(1), 'CData', L4);
    else
        set(h(1), 'CData', L3);
    end
else
    set(h(1), 'CData', L3);
end


disp('------------------')
disp("checkbox 1: "+cbox1);
disp("checkbox 2: "+cbox2);
disp("list: "+list);