%% Test for a single image
imSeg = imread('image_1122.png');
im = imread('image_1122.jpg');

[ratio, np, angle] = Extreu_caracteristiques(im, imSeg);

t = table(ratio, np, angle);
p = baggedTrees.predictFcn(t)

%% Test for a set of data

% REF: com llegir d'una carpeta: https://matlab.fandom.com/wiki/FAQ#How_can_I_process_a_sequence_of_files.3F

%% Vectors per la taula
ratio = [];
np = [];
label = [];
angle = [];

%% Boto d'ortheFiles = dir(filePattern); 
% /home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/BotodOr

%myFolder = uigetdir('/home', 'boto dor');
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/BotodOr'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "BotodOr"];
end

%% Buixol
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Buixol'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "Buixol"];
end

%% Crocus
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Crocus'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "Crocus"];
end

%% DentdeLleo
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/DentdeLleo'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "DentdeLleo"];
end

%% Fadrins
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Fadrins'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "Fadrins"];
end

%% Fritillaria
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Fritillaria'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "Fritillaria"];
end

%% Gerbera
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Gerbera'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "Gerbera"];
end

%% Girasol
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Girasol'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "Girasol"];
end

%% Hemerocallis
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Hemerocallis'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "Hemerocallis"];
end

%% Lliri
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Lliri'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "Lliri"];
end

%% Narcis
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Narcis'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "Narcis"];
end

%% Viola
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Viola'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessat
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    a = find(histo==a);
    [sig, r, npc] = Signatura(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    label = [label; "Viola"];
end

%% Guardar-ho tot en una table
sigTable = table(ratio, np, label, angle);
t = table(ratio, np, angle);
p = baggedTrees.predictFcn(t)

res = [label, string(p)]