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
% /home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/BotodOr

%myFolder = uigetdir('/home', 'boto dor');
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/BotodOr'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/BotodOr'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/Buixol'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/Buixol'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/Crocus'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/Crocus'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/DentdeLleo'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/DentdeLleo'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/Fadrins'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/Fadrins'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/Fritillaria'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/Fritillaria'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/Gerbera'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/Gerbera'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/Girasol'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/Girasol'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/Hemerocallis'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/Hemerocallis'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/Lliri'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/Lliri'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/Narcis'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/Narcis'

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
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/model/Viola'
%myFolder = '/Users/Desktop/GitHub/VC/Projecte/imatges_flors/model/Viola'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
    % preparar paths
    segName = theFiles(k).name;
    imName = strrep(segName, 'png','jpg');
    % llegir imatges
    imSeg = imread(segName);
    im = imread(imName);
    % preprocessatsave(filename,variables) guarda solo save(filename,variables) guarda solo las variables o los campos de un array de estructura especificados por variables.las variables o los campos de un array de estructura especificados por variables.
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
writetable(sigTable,'sigTable');

