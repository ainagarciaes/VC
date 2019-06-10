myFolder = uigetdir('/home');

%% Vectors per la taula
ratio = [];
np = [];
angle = [];

%% Llegir i tractar imatges
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
    % marti (en el main.m igual per cada bucle)
    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    % marti

end

sigTable = table(ratio, np, angle);
t = table(ratio, np, angle);

load('pathTrainedModel', 'trainedModel');

p = trainedModel.predictFcn(t);

res = [string(p)]