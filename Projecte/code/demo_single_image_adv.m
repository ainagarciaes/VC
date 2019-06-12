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

p = trainedModel.ClassificationEnsemble;
[labels, score] = predict(p,t);

for i=1:size(labels)
    major = 0;
    for j=1:12
        if (score(i,j) > 0.2)
            major = 1;
        end
    end
    if (major == 0)
        labels(i) = {'Null'};
    end
end
res = [string(labels)]