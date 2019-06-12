imP = uigetfile();

%% Vectors per la taula
ratio = [];
np = [];
angle = [];
excentricitat = [];
elongacio = [];
compacitat = [];

% preparar paths
segName = strrep(imP, 'jpg','png');
imName = strrep(imP, 'png','jpg');

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

sigTable = table(ratio, np, angle, excentricitat, elongacio, compacitat);
t = table(ratio, np, angle, excentricitat, elongacio, compacitat);

load('pathTrainedModel', 'trainedModel');

p = trainedModel.predictFcn(t);

res = [string(p)]