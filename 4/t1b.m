global h L1
L1 = imread('cameraman.tif');
L1 = double(L1) / 255;
figure;
h(1) = imshow(L1);

a = uicontrol('Style', 'slider');
a.Units = 'normalized';
a.Position = [.05, .08, .9, .05];
a.Min = .1;
a.Max = 1;
a.Value = .1;
a.Callback = 'f1';
h(2) = a;


b = uicontrol('Style', 'slider');
b.Units = 'normalized';
b.Position = [.05, .01, .9, .05];
b.Min = -45;
b.Max = 45;
b.Value = 0;
b.Callback = 'f1';
h(3) = b;

c = uicontrol('Style', 'popupmenu');
c.Units = 'normalized';
c.Position = [.8, .9, .15, .1];
c.String = {'gray', 'jet', 'hsv', 'prism', 'hot'};
c.Callback = 'f1';
h(4) = c;

f1; % apply slider value - 10% blur at start
