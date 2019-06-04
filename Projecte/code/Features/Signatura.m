function [topmosty, ratio, num_petals] = Signatura(binaryImage)
    % Find the centroid.
    labeledImage = bwlabel(binaryImage);
    props = regionprops(binaryImage, 'Centroid');
    xCentroid = props.Centroid(1);
    yCentroid = props.Centroid(2);

    figure, imshow(labeledImage), title('imatge original');
    hold on;
    plot(xCentroid, yCentroid, 'r+', 'MarkerSize', 30), title('centroids');
    hold off;
    [rows, columns] = size(binaryImage);
    % Translate the image
    xShift = columns/2 - xCentroid;
    yShift = rows/2 - yCentroid;
    binaryImage = imtranslate(binaryImage, [xShift, yShift]);

    % bwboundaries() returns a cell array, where each cell contains the row/column coordinates for an object in the image.
    % Plot the borders of all the coins on the original grayscale image using the coordinates returned by bwboundaries.

    boundaries = bwboundaries(binaryImage);
    numberOfBoundaries = size(boundaries, 1)
    for k = 1 : numberOfBoundaries
        thisBoundary = boundaries{k};
        %plot(thisBoundary(:,2), thisBoundary(:,1), 'r', 'LineWidth', 2), title('boundary');
    end
    
    % Extract into x and y arrays.  Assume numberOfBoundaries = 1.
    % Subtract centroid so that they go from -x to +x
    x = thisBoundary(:,2) - xCentroid;
    y = thisBoundary(:,1) - yCentroid;
    figure, imshow(binaryImage), title('imatge original');
    hold on;
    plot(thisBoundary(:,2), thisBoundary(:,1), 'r', 'LineWidth', 2), title('boundary');
    hold off;
    xy = [x, y]; % Make N by 2 array to be used for rotation.

    % https://en.wikipedia.org/wiki/Rotation_matrix
    % Apply rotations to these arrays.
    for angle = 1 : 359
        rotationMatrix = [cosd(angle), -sind(angle); sind(angle), cosd(angle)];
        xyRotated = xy * rotationMatrix;
        % Find the topmost Y value.
        topmosty(angle) = max(xyRotated(:, 2));
    end
    
    topmosty = topmosty(1:359);
    figure, plot(topmosty, 'LineWidth', 2), title('signature');
    
    ratio = max(topmosty)/min(topmosty);
    peaks = findpeaks(topmosty);
    [x, num_petals] = size(peaks);
end