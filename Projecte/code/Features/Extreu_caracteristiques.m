% NO LA FEM SERVIR



function [ratio, np, angle] = Extreu_caracteristiques(im, imSeg) % crida a totes les funcions de caracteristiques i guarda els resultats en un struct que sera una fila de la nostra taula de dades usades per pendre posteriorment les decisions. El struct aquest s'haurà de definir pero seran basicament els camps necessaris de cada característica
    imBin = BinaritzacioUniforme(imSeg);
    % caracteristiques
    histo = Histograma_color(im, imSeg);
    a = max(histo);
    angle = find(histo==a);
    [sig, ratio, np] = Signatura(imBin);

end
%-----------------------------------------------------------------------------%
