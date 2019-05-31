% pre: imatge normalitzada en Red & Blue
% post: retorna l'histograma 2d normalitzat
function histo = Histo2D(rb)
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