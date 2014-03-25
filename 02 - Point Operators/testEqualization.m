img1 = rgb2gray(imread('test-hist-01.png'));
img2 = rgb2gray(imread('test-hist-02.png'));

img1Eq = histeq(img1);
img2Eq = histeq(img2);