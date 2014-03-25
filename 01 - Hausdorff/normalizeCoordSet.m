function [outRows outColumns] = normalizeCoordSet(vector)
meanX = mean(vector(:,1));
meanY = mean(vector(:,2));

rows = single(vector(:,1)) - single(meanX);
columns = single(vector(:,2)) - single(meanY);

scaleFactor = single(50)/single(max(rows(:)) - min(rows(:)));
outRows = rows.*scaleFactor;
outColumns = columns.*scaleFactor;

end

