im = imread('image_1125.jpg');
imseg = imread('image_1125.png');

histo = Histograma_color(im, imseg);

imbin = ~imbinarize(imseg);
sig = Signatura(imbin);

labels = zeros(3, 1);
labels = Decisor_histograma_color(histo, labels);
decisio = min(labels);

