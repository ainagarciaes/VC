%function [c1, c2] = Colors_flor(imatge) 
function histo = Colors_flor(imatge) 
% Hem identificat diferents colors que pot tenir cada flor

% Tambe hem vist que cada flor te 1 o 2 colors, per tant, a la
% nostra funcio intentem trobar els dos colors predominants dins 
% l'espectre RGB de la flor filtrant el histograma per bandes
% de colors i fent-li passar un threshold minim.

% A cada un dels colors li hem assignat un identificador per
% tal de facilitar la seva quantització

% Color   -   ID:
% --------------
% Groc        1
% Blanc       2
% Lila        3
% Taronja     4
% Rosa        5
% Blau        6  (com violeta)
% Vermell     7
% Indefinit   -1

    rb = normalitzaRGB(imatge);
    histo = histo2D(rb);
    dtTaronja = distanciaAColor('taronja', histo)
    dtGroc = distanciaAColor('groc', histo)
    dtLila = distanciaAColor('lila', histo)
    dtGranate = distanciaAColor('granate', histo)
    dtBlanc = distanciaAColor('blanc', histo)
    
    % quantitzacio de cada bandda
end

% normalitza la imatge i la retorna en components Red & Blue
function rb = normalitzaRGB(imatge)
    aux(:,:) = imatge(:,:,1) + imatge(:,:,2) + imatge(:,:,3);
    [x, y, z] = size(imatge);
    rb = uint8(zeros(x, y, 2));

    rb(:,:,1) = uint8(255*imatge(:,:,1)./aux);
    rb(:,:,2) = uint8(255*imatge(:,:,3)./aux);
end

% pre: imatge normalitzada en Red & Blue
% post: retorna l'histograma 2d normalitzat
function histo = histo2D(rb)
    s = 64;
    histo = zeros(s, s);
    [x, y, z] = size(rb);

    scale = 255/s;
    
    for i = 1:x
        for j = 1:y
            
            r = ceil(rb(i,j,1)/scale);
            b = ceil(rb(i,j,2)/scale);

            if r == 0
                r = 1;
            end

            if b == 0
                b = 1;
            end
            histo(r, b) = histo(r, b) + 1;
        end
    end
    % normalitzem l'histograma (mirar si cal aquesta o la suma)
    histo = histo./(x*y);
end

function dColor = distanciaAColor(color, h)
    switch color
        case 'taronja'
            im = imread('taronja.png');
            x1 = 3;
            x2 = 13;
            y1 = 36;
            y2 = 46;
        case 'granate'
            im = imread('granate.png');
            x1 = 13;
            x2 = 23;
            y1 = 42;
            y2 = 52;
        case 'blanc'
            im = imread('blanc.png');
            x1 = 18;
            x2 = 28;
            y1 = 16;
            y2 = 26;
        case 'groc'
            im = imread('groc.png');
            x1 = 0;
            x2 = 6;
            y1 = 29;
            y2 = 39;
        case 'lila'
            im = imread('lila.png');
            x1 = 28;
            x2 = 38;
            y1 = 18;
            y2 = 28;
    end
    
    imatge = double(im);
    rb = normalitzaRGB(imatge);
    
    histo = histo2D(rb); hold on;
    histo = imgaussfilt(histo, 2);
    h = imgaussfilt(h, 2);

    % buscar el peak de la imatge en el interval que toca i retornar la
    % distancia amb el peak d'aquesta, algo aixi, pensar com fer-ho
    
    dColor = 0
end