img = imread('disks.png');
imgPoisson = imnoise(img, 'poisson');
imgSpeckle = imnoise(img, 'speckle');
figure('Name', 'Poisson Noise');
imshow(imgPoisson);
figure('Name', 'Speckle Noise');
imshow(imgSpeckle);