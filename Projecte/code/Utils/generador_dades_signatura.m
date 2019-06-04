

%% Boto d'or
imseg1 = imread('image_1125.png');
imseg2 = imread('image_1133.png');

[sig1, ratio1, np1] = Signatura(~imbinarize(imseg1));
[sig2, ratio2, np2] = Signatura(~imbinarize(imseg2));

%% Buixol



%% Crocus

%% Dent de lleo
imseg5 = imread('image_0964.png');
imseg6 = imread('image_0989.png');

[sig5, ratio5, np5] = Signatura(~imbinarize(imseg5));
[sig6, ratio6, np6] = Signatura(~imbinarize(imseg6));
%% Fadrins

%% Fritillaria

%% Gerbera

%% Girasol

%% Hemerocallis

%% Lliri

%% Narcis

%% Viola
imseg3 = imread('image_1284.png');
imseg4 = imread('image_1286.png');

[sig3, ratio3, np3] = Signatura(~imbinarize(imseg3));
[sig4, ratio4, np4] = Signatura(~imbinarize(imseg4));

%% Guardar-ho tot en una table
ratios = [ratio1; ratio2; ratio3; ratio4; ratio5; ratio6];
np = [np1; np2; np3; np4; np5; np6];
labels = [1; 1; 2; 2; 3; 3];

ratiosTable = table(labels, ratios, np);
writetable(ratiosTable,'ratioscolor');