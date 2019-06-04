%% Boto d'or
im1 = imread('image_1121.jpg');
imseg1 = imread('image_1121.png');

im2 = imread('image_1154.jpg');
imseg2 = imread('image_1154.png');

histo1 = Histograma_color(im1, imseg1);
histo2 = Histograma_color(im2, imseg2);

%% Buixol
im3 = imread('image_1201.jpg');
imseg3 = imread('image_1201.png');

im4 = imread('image_1252.jpg');
imseg4 = imread('image_1252.png');

histo3 = Histograma_color(im3, imseg3);
histo4 = Histograma_color(im4, imseg4);

%% Crocus
im5 = imread('image_0333.jpg');
imseg5 = imread('image_0333.png');

im6 = imread('image_0330.jpg');
imseg6 = imread('image_0330.png');

im7 = imread('image_0332.jpg');
imseg7 = imread('image_0332.png');

im8 = imread('image_0347.jpg');
imseg8 = imread('image_0347.png');

histo5 = Histograma_color(im5, imseg5);
histo6 = Histograma_color(im6, imseg6);
histo7 = Histograma_color(im7, imseg7);
histo8 = Histograma_color(im8, imseg8);
%% Dent de lleo

%% Fadrins

%% Fritillaria

%% Gerbera

%% Girasol

%% Hemerocallis

%% Lliri

%% Narcis

%% Viola

%% Guardar-ho tot en una table
histos = {histo1; histo2; histo3; histo4; histo5; histo6; histo7; histo8};
labels = {1; 1; 2; 2; 3; 3; 3; 3};

histosTable = table(labels, histos);
writetable(histosTable,'histoscolor');