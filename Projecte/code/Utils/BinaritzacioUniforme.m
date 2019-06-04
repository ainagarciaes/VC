%% Es necessari per poder fer les funcions que requereixen de la imatge binaritzada, tinguin les següents caracteristiques
%       1. La binaritzacio ha de tenir nomes dues regions, la flor en
%       blanc i el fons en negre
%       2. Ha d'haver nomes una flor
%       3. En cas d'haver forats, aquests s'han de tancar
%       4. Si es borren flors, es borrara la que tingui l'area mes petita
%       5. El contorn que s'hauria de fer servir es l'intern, tot lo negre
%       de la imatge segmentada es considera fons.
%       6. En cas que la imatge tingui un sepal sortint, aquest serà
%       eliminat.
%       7. En la imatge segmentada, la flor SEMPRE es VERMELLA.

%% Coses utils a mirar
%       1. Treballar nomes amb la zona vermella
%       2. imfill per omplir forats
%       3. Tenir labels a cada tros vermell i quedarnos amb el mes gran
%       4. Contar numero de regions per assegurarnos que esta be la
%       binaritzacio
%       5. Mirar com afecta un imclose per imatges on per exemple, hi ha
%       una abella

function imBin = BinaritzacioUniforme(imSeg)
    imBin = (imSeg == 1); % en teoria binaritza sempre be
    imBin = imfill(imBin,'holes'); % trec els forats que hi ha dins de la flor
    imBin = bwareafilt(imBin, 1); % deixa nomes la part blanca mes gran, treu blops erronis de fons
    % TODO: separar dues flors quan sigui necessari, mirar com fer-ho
    % TODO: mirar com tancar la imatge quan hi hagi abelles i coses aixi
end