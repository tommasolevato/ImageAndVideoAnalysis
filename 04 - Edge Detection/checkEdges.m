function [tp,tn,fp,fn]=checkEdges(imgIn, groundtruth)
% Usage: checkEdges(imageOfDetectedEdges, groundtruthImage)
%
% Return the statistics of true positive, true negative, false positive and
% false negative. Both imgIn and groundtruth must be 2D local arrays

NimgIn = ~imgIn;
Ngroundtruth = ~groundtruth;

A = imgIn & groundtruth;
B = NimgIn & Ngroundtruth;
C = NimgIn & groundtruth;
D = imgIn & Ngroundtruth;
tp = single(sum(uint8(A(:))))/single(sum(uint8(imgIn(:))));
tn = single(sum(uint8(B(:))))/single(sum(uint8(NimgIn(:))));
fp = single(sum(uint8(D(:))))/single(sum(uint8(imgIn(:))));
fn = single(sum(uint8(C(:))))/single(sum(uint8(NimgIn(:))));

