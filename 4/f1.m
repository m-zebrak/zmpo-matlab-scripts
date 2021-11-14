%first function
function f1
global h L1

resize = 1.1 - get(h(2), 'Value'); % blur - from 10 to 100 percent
L2 = imresize(L1, resize);
L3 = imresize(L2, [256, 256], 'nearest');

rotate = get(h(3), 'Value');
L4 = imrotate(L3, rotate, 'crop');

set(h(1), 'CData', L4);

allItems = get(h(4), 'String');
selected = get(h(4), 'Value');
map = allItems{selected};
colormap(map);

map_str = string(allItems(selected));
disp('------------------');
fprintf('resize: %f\n', resize);
fprintf('rotate: %f\n', rotate);
fprintf('colormap: %s\n', map_str);
