function distance = realHausdorff(img01_I, img01_J, img02_I, img02_J)

maxDistance = 0;
for i=1:length(img01_I)
        minDistance = Inf;
        for j=1:length(img02_I)
                minDistance = min(minDistance, norm([(img01_I(i) - img02_I(j)), (img01_J(i) - img02_J(j))]));
        end
        maxDistance = max(maxDistance, minDistance);
end
distance = maxDistance;
end

