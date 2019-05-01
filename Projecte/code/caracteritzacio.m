function struct_caracteristiques = extreu_caracteristiques(imatge, imatge_seg) % crida a totes les funcions de caracteristiques i guarda els resultats en un struct que sera una fila de la nostra taula de dades usades per pendre posteriorment les decisions. El struct aquest s'haurà de definir pero seran basicament els camps necessaris de cada característica
end
%-----------------------------------------------------------------------------%

function np = num_petals(seg_img)
    np = 0;
end
 
function [r, g, b] = color_petals(imatge, imatge_seg) % poso la segmentada per poder fer una mask nomes amb la part de les flors
    R = imatge(:,:,1);
    G = imatge(:,:,2);
    B = imatge(:,:,3);
    imfons = imatge_seg ~= 1;
    r = uint8(mean(R(~imfons)));
    g = uint8(mean(G(~imfons)));
    b = uint8(mean(B(~imfons)));
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
