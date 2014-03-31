close all;

img = imread('coins.png');
template = imcrop(img);

img_out = normxcorr2(template, img);
figure; imshow(img);
figure; imshow(template);
figure; mesh(img_out); colormap('jet');

img_max = nlfilter(img_out, [5 5], @isMax);
result = sum(img_max(:) == 1);

disp(result);