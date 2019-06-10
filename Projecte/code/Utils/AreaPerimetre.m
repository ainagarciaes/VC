function [area, perimetre] = AreaPerimetre(imBin)
    area = regionprops (imBin, 'Area');
    area = struct2cell(area);
    area = cell2mat(area);
    perimetre = sum(sum(bwperim(imBin)));
end