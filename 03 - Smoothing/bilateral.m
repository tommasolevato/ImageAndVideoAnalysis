function out = bilateral( inputData )

i = (length(inputData(:,1)) + 1) /2;
j = (length(inputData(1,:)) +1) /2;

wMatrix = zeros(size(inputData));

for k=1:length(inputData(:,1)),
    for h=1:length(inputData(1,:))
        wMatrix(k,h) = w(i,j,k,h,inputData);
    end
end

num = 0;
den = 0;

for k=1:length(inputData(:,1)),
    for h=1:length(inputData(1,:))
        num = num + double(inputData(k,h)) * wMatrix(k,h);
        den = den + wMatrix(k,h);
    end
end

out = num/den;


end

function out = w(i, j, k, h, inputData)

dueSigmaDQuadro = i * i / 4.5;
dueSigmaRQuadro = 15 * 15;

numDomain = ( (i-k)*(i-k)  + (j-h)*(j-h) );

domainKernel = exp(double( -numDomain/dueSigmaDQuadro));

numRange = (inputData(i,j) - inputData(k,h))^2;

rangeKernel = exp(double( -numRange/dueSigmaRQuadro));

out = domainKernel * rangeKernel;

end