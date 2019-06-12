
%% Test for a set of data

% REF: com llegir d'una carpeta: https://matlab.fandom.com/wiki/FAQ#How_can_I_process_a_sequence_of_files.3F

%% Vectors per la taula
ratio = [];
np = [];
label = [];
angle = [];
excentricitat = [];
elongacio = [];
compacitat = [];

%% Boto d'ortheFiles = dir(filePattern); 
% /home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/BotodOr

%myFolder = uigetdir('/home', 'boto dor');
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/BotodOr'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/BotodOr'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "BotodOr"];
end

%% Buixol
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Buixol'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/Buixol'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "Buixol"];
end

%% Crocus
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Crocus'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/Crocus'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "Crocus"];
end

%% DentdeLleo
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/DentdeLleo'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/DentdeLleo'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "DentdeLleo"];
end

%% Fadrins
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Fadrins'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/Fadrins'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "Fadrins"];
end

%% Fritillaria
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Fritillaria'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/Fritillaria'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "Fritillaria"];
end

%% Gerbera
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Gerbera'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/Gerbera'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "Gerbera"];
end

%% Girasol
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Girasol'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/Girasol'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "Girasol"];
end

%% Hemerocallis
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Hemerocallis'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/Hemerocallis'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "Hemerocallis"];
end

%% Lliri
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Lliri'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/Lliri'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "Lliri"];
end

%% Narcis
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Narcis'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/Narcis'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "Narcis"];
end

%% Viola
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/test/Viola'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/test/Viola'

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
    [exc, elo, com] = PropsGeo(imBin);
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];
    label = [label; "Viola"];
end

%% Guardar-ho tot en una table
sigTable = table(ratio, np, label, angle, excentricitat, elongacio, compacitat);
t = table(ratio, np, angle, excentricitat, elongacio, compacitat);

load('pathTrainedModel', 'trainedModel');
p = trainedModel.ClassificationEnsemble;
[l, score] = predict(p,t)

for i=1:size(l)
    major = 0;
    for j=1:12
        if (score(i,j) > 0.2)
            major = 1;
        end
    end
    if (major == 0)
        l(i) = {'Null'};
    end
end
res = [label, string(l)]

