function distance = hausdorff_t(t, img01_I, img01_J, img02_I, img02_J)

img01_I = img01_I + t(1);
img01_J = img01_J + t(2);

firstDistance = realHausdorff(img01_I, img01_J, img02_I, img02_J);
secondDistance = realHausdorff(img02_I, img02_J, img01_I, img01_J);

distance = max(firstDistance, secondDistance)


end

