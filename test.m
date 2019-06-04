imseg = imread('image_0737.png');

imbin = BinaritzacioUniforme(imseg);

figure, imshow(imbin);
[sig, ratio, np] = Signatura(imbin);

figure, plot(sig), title('signatura');
ratio
np

