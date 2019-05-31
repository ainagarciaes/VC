function struct_caracteristiques = Extreu_caracteristiques(imatge, imatge_seg) % crida a totes les funcions de caracteristiques i guarda els resultats en un struct que sera una fila de la nostra taula de dades usades per pendre posteriorment les decisions. El struct aquest s'haurà de definir pero seran basicament els camps necessaris de cada característica
end
%-----------------------------------------------------------------------------%

function np = num_petals(seg_img)
    bw = imbinarize(im); %imatge a B/W binary
    ee = strel('disk',40); %TO DO: el tamany del disk ha de variar depenent del tipus de flor
    close1 = imclose(bw, ee); %close de la imatge bw amb ee
    petals = imsubtract(bw, close1); %restem l'imatge orig bw amb la close per veure les puntes dels petals
    arreglada = bwareaopen(petals, 100); %eliminem les areas < 100 pixels (soroll)
    [etiq, numdiffs] = bwlabel(arreglada); %obtenim imatge etiquetada. numdiffs es el nombre de labels 
    np = numdiffs; %resultat    
end

function angle_orientacio = orientacio_imatge(imatge, imatge_seg) % no se si necessitem les dos, borrar el que calgui)
    angle_orientacio = 0;
end

function [r, g, b] = color_centre(imatge, imatge_seg)
    r = 0;
    g = 0;
    b = 0;
end

function [height, width] = altura_amplada_flor(imatge_seg)
    imfons = imatge_seg ~= 1;
    imfons = imcomplement(imfons);
    
    [x, y] = size(imfons);
    
    % ALTURA MAXIMA
    for i = 1:x
        for j = 1:y
            if imfons(x,y) % primer negre que trobem
                maxHeight = x;
                break
            end     
        end
    end
    
    % ALTURA MINIMA
    for i = x:-1:1
        for j = 1:y
            if imfons(x,y)
                minHeight = x;
                break
            end
        end
    end  
    
    % AMPLADA MAXIMA
    for j = y:-1:1
        for i = 1:x
            if imfons(x,y)
                maxWidth = y;
                break
            end
        end
    end
    
    % AMPLADA MINIMA
    for j = 1:y
        for i = 1:x
            if imfons(x,y) % primer negre que trobem
                minWidth = y;
                break
            end     
        end
    end
    
    height = maxHeight - minHeight;
    width = maxWidth - minWidth;
end

function [height width] = altura_amplada_centre(params) % no se si es la normal, les dues o una tercera nomes amb el centre???? potser caldra altres auxiliars per trobar el centre segons els tipus que pugui haver-hi
end

function relacio = relacio_centre_flor(hc, wc, hp, wp) % simplement fer una divisio o algo, es la que hem parlat en el apartat G del document
end

function area = area_flor(imatge, imatge_seg)
    imfons = imatge_seg ~= 1;
    BW = imcomplement(imfons);
    area = bwarea(BW);
end

function rb = normalitzaRGB(imatge)
    aux(:,:) =imatge(:,:,1) + imatge(:,:,2) + imatge(:,:,3);
    [x, y, z] = size(imatge);
    rb(:,:,1) = uint8(255*imatge(:,:,1)./aux);
    rb(:,:,2) = uint8(255*imatge(:,:,3)./aux);
end

function hist = histograma_RGB(imatge, precisio)
    rb = normalitzaRGB(imatge);
    hist = zeros(precisio, precisio);
    [x, y, z] = size(rb);
    scale = 255/precisio;
    for m = 1:x
        for n = 1:y
            r = ceil(rb(m,n,1)/scale);
            b = ceil(rb(m.n,2)/scale);
            if r == 0
                r == 1;
            end
            if b == 0
                b == 1;
            end
            hist(r,b) = hist(r,b) + 1
        end
    end
    hist = hist./(x*y);
end