function distance = hausdorff(img01_I, img01_J, img02_I, img02_J)

firstDistance = realHausdorff(img01_I, img01_J, img02_I, img02_J);
secondDistance = realHausdorff(img02_I, img02_J, img01_I, img01_J);

distance = max(firstDistance, secondDistance)

end

