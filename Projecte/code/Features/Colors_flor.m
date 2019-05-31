function [c1, c2] = Colors_flor(imatge) 
% function histo = Colors_flor(imatge) 
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
% Granate     5
% Indefinit   6

    rb = NormalitzaRGB(imatge);
    histo = Histo2D(rb);
    
    % Vector per guardar un contador de les aparicions de cada color
    colors_count = [0, 0, 0, 0, 0];
    % deteccio de groc
    colors_count(1) = sum(sum(histo(29:39,1:6)));
    % deteccio de blanc
    colors_count(2) = sum(sum(histo(16:26,18:28)));
    % deteccio de lila
    colors_count(3) = sum(sum(histo(18:28,28:38)));
    % deteccio de taronja
    colors_count(4) = sum(sum(histo(36:46,3:13)));
    % deteccio de granate
    colors_count(5) = sum(sum(histo(42:52,13:23)));
    
    colors_count
    % extrec els dos colors maxims
    [count] = max(colors_count)
    c1 = find(colors_count==count);
    colors_count(c1) = 0;
    
    if count == 0
        c1 = 0;
    end

    [count] = max(colors_count)
    c2 = find(colors_count==count);
    if count == 0
        c2 = 0;
    end
end