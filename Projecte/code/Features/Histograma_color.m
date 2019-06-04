% imseg ha de ser de tipus double, on el color negre pertany a l'area de la flor i val 1 i el blanc val 0 i és el fons
% l'histograma resultant és el dels angles hue i val entre 1 i 360. Els punts on val 0 no estan contemplats ja que son els de fons
function histo = Histograma_color(im, imseg)
    [x, y] = size(imseg);
    mask = get_mask(imseg);
    im = im.*mask;
    hue = hueFromRGB(im, mask);
    histo = zeros(1,361);
    for i=1:x
        for j=1:y
            index=ceil(hue(i,j));
            histo(index+1) = histo(index+1) + 1;
        end
    end
    histo = histo(1,1:360);
    sigma = 5;
    f = normpdf(-20:20,0,sigma); % <== f(x) gaussian distribution
    histo = conv(histo,f);
    histo = histo(1,1:360);
end


function hue = hueFromRGB(im, mask)
    % TODO: posar el fons a 0 somehow
    hsv = rgb2hsv(im);
    h = hsv(:,:,1);
    % posar els hue = 0 com a hue = 360
    [x y] = size(h);
    hue = 360*h;
    
    for i=1:x
        for j=1:y
            if(hue(i,j) == 0 && mask(i,j) == 0) % negre
                hue(i,j) = 360;
            end
        end
    end
    
    % al fer plot del histograma, ignorar el valor del 0
    
end

function mask = get_mask(imseg)
    imbin = imbinarize(imseg);
    imbin = ~imbin;
    maskBin = cat(3,imbin,imbin,imbin);
    mask = uint8(maskBin);
end