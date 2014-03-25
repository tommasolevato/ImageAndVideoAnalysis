function smoothing( img, noiseImg )
mask = ones([3 3])./9;
imgOut = imfilter(noiseImg, mask, 'conv');
figure('Name', 'Averaging');
imshow(imgOut);
imgOut = conv2(double(noiseImg), double(mask), 'same');
figure('Name', 'Averaging');
imshow(imgOut ./ max(imgOut(:)));
averagingErrorEstimate = mse( double(imgOut(:)) - double(img(:)) );
fprintf('ageragingErrorEstimate = %f\n\n', averagingErrorEstimate);

mask = makeGauss(1.2);
imgOut = imfilter(noiseImg, mask, 'conv');
figure('Name', 'Gaussian Smoothing');
imshow(imgOut);
gaussianErrorEstimate = mse( double(imgOut(:)) - double(img(:)) );
fprintf('gaussianErrorEstimate = %f\n\n', gaussianErrorEstimate);



imgOut = nlfilter(noiseImg, [3 3], @myMedian);
figure('Name', 'Median Filtering');
imshow(imgOut);

imgOut = medfilt2(noiseImg, [3 3]);
figure('Name', 'Median Filtering');
imshow(imgOut);
medianErrorEstimate = mse( double(imgOut(:)) - double(img(:)) );
fprintf('medianErrorEstimate = %f\n\n', medianErrorEstimate);


imgOut = nlfilter(noiseImg, [3 3], @bilateral);
figure('Name', 'Bilateral Filtering');
imshow(mat2gray(imgOut));
bilateralErrorEstimate = mse( double(imgOut(:)) - double(img(:)) );
fprintf('bilateralErrorEstimate = %f\n\n', bilateralErrorEstimate);


end

