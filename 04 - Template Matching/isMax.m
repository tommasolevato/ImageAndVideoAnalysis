function out = isMax( inputData )

coords = (size(inputData) + 1) / 2;
central  = inputData(coords, coords);

if (central > 0.8) & (central == max(inputData(:)))
    out = 1;
else
    out = 0;
end

end

