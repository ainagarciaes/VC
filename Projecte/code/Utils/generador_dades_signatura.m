% REF: com llegir d'una carpeta: https://matlab.fandom.com/wiki/FAQ#How_can_I_process_a_sequence_of_files.3F

%% Vectors per la taula
ratio = [];
np = [];
label = [];

%% Boto d'ortheFiles = dir(filePattern); 
% /home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/BotodOr

%myFolder = uigetdir('/home', 'boto dor');
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/BotodOr'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "BotodOr"];
end

%% Buixol
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/Buixol'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "Buixol"];
end

%% Crocus
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/Crocus'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "Crocus"];
end

%% DentdeLleo
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/DentdeLleo'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "DentdeLleo"];
end

%% Fadrins
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/Fadrins'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "Fadrins"];
end

%% Fritillaria
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/Fritillaria'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "Fritillaria"];
end

%% Gerbera
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/Gerbera'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "Gerbera"];
end

%% Girasol
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/Girasol'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "Girasol"];
end

%% Hemerocallis
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/Hemerocallis'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "Hemerocallis"];
end

%% Lliri
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/Lliri'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "Lliri"];
end

%% Narcis
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/Narcis'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "Narcis"];
end

%% Viola
myFolder = '/home/auri/Documents/UNI/VC/Projecte/imatges_flors/Segmentades/Viola'

filePattern = fullfile(myFolder, '*.png');
theFiles = dir(filePattern);
for k = 1 : length(theFiles)
  baseFileName = theFiles(k).name;
  fprintf(1, 'Now reading %s\n', baseFileName);
  imageArray = imread(baseFileName);
  imBin = BinaritzacioUniforme(imageArray);
  [sig, r, npc] = Signatura(imBin);
  ratio = [ratio; r];
  np = [np; npc];
  label = [label; "Viola"];
end

%% Guardar-ho tot en una table
sigTable = table(ratio, np, label);
writetable(sigTable,'sigTable');