%fun 1
function f1
global h L1

h2val = get(h(2), 'Value');
h3val = get(h(3), 'Value');
h4val = get(h(4), 'Value');

L2 = L1;
L2(:, :, 1) = L2(:, :, 1) + h2val;
L2(:, :, 2) = L2(:, :, 2) + h3val;

height = size(L2, 1);
loc = round((h4val + 1)/2*height);
disp(h4val*height);
L2(loc+1:end, :, :) = L2(loc+1:end, :, :) + .5;


L2(L2 < 0) = 0;
L2(L2 > 1) = 1;

set(h(1), 'CData', L2);

disp('==================');
fprintf('h2: %f\n', h2val);
fprintf('h3: %f\n', h3val);
fprintf('h4: %f\n', h4val);
