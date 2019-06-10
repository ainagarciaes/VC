myFolder = uigetdir('/home');

%% Vectors per la taula
ratio = [];
np = [];
angle = [];
excentricitat = [];
elongacio = [];
compacitat = [];

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
    [exc, elo, com] = PropsGeo(imBin);

    
    angle = [angle; a];
    ratio = [ratio; r];
    np = [np; npc];
    excentricitat = [excentricitat; exc];
    elongacio = [elongacio; elo];
    compacitat = [compacitat; com];

end

sigTable = table(ratio, np, angle, excentricitat, elongacio, compacitat);
t = table(ratio, np, angle, excentricitat, elongacio, compacitat);

load('pathTrainedModel', 'trainedModel');

p = trainedModel.predictFcn(t);

res = [string(p)]