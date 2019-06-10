imSeg = imread('image_1207.png');
im = imread('image_1207.jpg');
imbin = BinaritzacioUniforme(imSeg);

[topmosty, ratio, num_petals] = Signatura(imbin);

figure, imshow(im), title('Imatge original');
