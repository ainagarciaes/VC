% imseg ha de ser de tipus double, on el color negre pertany a l'area de la flor i val 1 i el blanc val 0 i és el fons
% l'histograma resultant és el dels angles hue i val entre 1 i 360. Els punts on val 0 no estan contemplats ja que son els de fons
function histo = Histograma_color(im, imseg)
    [x, y] = size(imseg);
    imatge = zeros(x,y);
    imatge = im*.imseg;
    hue = hueFromRGB(imatge);
    histo = histogram(hue, 360);
end


function hue = hueFromRGB(im)
    [x,y] = size(im);
    for i = 1:x 
        for j = 1:y 
            R = im(i,j,1);
            G = im(i,j,2);
            B = im(i,j,2);
            H = acosd(0.5*((R-G)+(R-B)/sqrt((R-G)*(R-G)+(R-B)*(G-B))))
            if B < G 
                H = 360 - H
            end

            if H == 0
                H = 360
            end
        end
    end