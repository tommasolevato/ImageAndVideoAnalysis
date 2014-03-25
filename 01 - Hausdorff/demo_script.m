galleryNames = { 'hiero_01/01.png';
'hiero_01/02.png';
'hiero_01/03.png';
'hiero_01/04.png';
'hiero_01/05.png';
'hiero_01/06.png';
'hiero_01/07.png';
'hiero_01/08.png'};

% legge la prima immagine di gallery
img01 = imread(galleryNames{1});

% trova le coordinate dei pixel neri nell'immagine
[img01_I img01_J] = find(img01==0);

% legge l'immagine hiero_02/02.png
img02 = imread('hiero_02/02.png');

% trova le coordinate dei pixel neri nell'immagine
[img02_I img02_J] = find(img02==0);

% calcola la distanza di Hausdorff tra le coordinate dei due insiemi
hausdorff(img01_I, img01_J, img02_I, img02_J)