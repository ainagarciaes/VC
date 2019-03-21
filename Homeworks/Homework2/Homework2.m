%%HOMEWORK 2 - MARTÍ RAMON, AINA GARCIA 

imatges = ['F1011flb.bmp'; 'F1019flb.bmp'; 'F1031flb.bmp'; 'F1051flb.bmp'; 'F1053flb.bmp'; 'F1059flb.bmp';'F1064flb.bmp';'F1079flb.bmp';'F1083flb.bmp'; 'F1096flb.bmp';'F1097flb.bmp';'F1101flb.bmp';'F1102flb.bmp';'F1103flb.bmp'];
resultats = ["Mètode" "Imatge" "Percentatge de Greix"];

for k = 1:14
    %% Part 1, llegir i retallar les imatges
    s = imatges(k, :);
    im1 = imread(s);
    im1 = imcrop(im1);
    
    %% Part 2, binaritzat a partir de llindar preprogramat
    % La nostra idea ha estat fer sempre dos binaritzats, un primer binaritzat
    % que ens digui quines parts de la imatge son fons i quines son part de la
    % carn. A partir d'aqui fem un segon binaritzat amb el threshold de la
    % carn i calculem el nivell de greix restant el fons.

    carn = 0;
    greix = 0;

    bgMask = imbinarize(im1, 0.3);
    greixMask = imbinarize(im1, 0.7);

    [x, y] = size(im1);

    %Calcular el percentatge de greix
    for i = 1:x
        for j = 1:y
            if bgMask(i, j) == 1
                carn = carn + 1;
                if greixMask(i, j) == 1
                    greix = greix + 1;
                end
            end
        end
    end

    percentatgeGreix = greix / carn * 100;
    res = ["Binaritzat ll.preprogramat" s percentatgeGreix];
    resultats = [resultats; res];
    
    %% Part 3, binaritzat a partir de llindar a ull del histograma
    h = histogram(im1);
    [t1, k] = ginput(2) % t1 value determines the threshold values

    bgMask2 = imbinarize(im1, t1(1)/255);
    greixMask2 = imbinarize(im1, t1(2)/255);

    [x, y] = size(im1);

    %Calcular el percentatge de greix
    for i = 1:x
        for j = 1:y
            if bgMask2(i, j) == 1
                carn = carn + 1;
                if greixMask2(i, j) == 1
                    greix = greix + 1;
                end
            end
        end
    end

    percentatgeGreix = greix / carn * 100;
    res = ["Binaritzat ll.histograma" s percentatgeGreix];
    resultats = [resultats; res];
    
    %% Part 4, trobar llindars de forma automatica
    level = graythresh(im1);
    bgMask3 = imbinarize(im1, level);
    bgMask3 = cast(bgMask3, 'like', im1);
    imNoBG = im1.*bgMask3; % fons completament negre (0)

    fons = 0; %contem els pixels de fons per poder calcular el percentatge de greix restant el fons

    for i = 1:x
        for j = 1:y
            if imNoBG(i, j) == 0
                imNoBG(i, j) = 255;
                fons = fons + 1;
            end
        end
    end

    level2 = graythresh(imNoBG); %threshold for the meat part
    greixMask3 = imbinarize(imNoBG, level2); % els pixels negres corresponen a carn

    carn = 0;

    for i = 1:x
        for j = 1:y
            if greixMask3(i, j) == 0
                carn = carn + 1;
            end
        end
    end

    percentatgeGreix = (x*y - carn - fons) * 100/carn; 
    res = ["Binaritzat ll.automàtic" s percentatgeGreix];
    resultats = [resultats; res];
    
    %% Part 5, utilitzacio d'altres metodes

    % Mètode 1: dividir la imatge en 9 subimatges i agafar com a
    % thresholds: 0.3 de la avg pel background i 0.7 avg per carn
    % Es un local thresholding de mida fixa
    
    m11 = im1(1:(x/3), 1:(y/3));    
    m12 = im1(1:(x/3), (y/3):(2*y/3));
    m13 = im1(1:(x/3), (2*y/3):y);
    
    m21 = im1((x/3):(2*x/3), 1:(y/3));
    m22 = im1((x/3):(2*x/3), (y/3):(2*y/3));
    m23 = im1((x/3):(2*x/3), (2*y/3):y);
    
    m31 = im1((2*x/3):x, 1:(y/3));
    m32 = im1((2*x/3):x, (y/3):(2*y/3));
    m33 = im1((2*x/3):x, (2*y/3):y);
    
    bg11 = imbinarize(m11, mean(m11, 'all')*0.003);
    g11 = imbinarize(m11, mean(m11, 'all')*0.007);
    bg12 = imbinarize(m12, mean(m12, 'all')*0.003);
    g12 = imbinarize(m12, mean(m12, 'all')*0.007);
    bg13 = imbinarize(m13, mean(m13, 'all')*0.003);
    g13 = imbinarize(m13, mean(m13, 'all')*0.007);
    
    bg21 = imbinarize(m21, mean(m21, 'all')*0.003);
    g21 = imbinarize(m21, mean(m21, 'all')*0.007);
    bg22 = imbinarize(m22, mean(m22, 'all')*0.003);
    g22 = imbinarize(m22, mean(m22, 'all')*0.007);
    bg23 = imbinarize(m23, mean(m23, 'all')*0.003);
    g23 = imbinarize(m23, mean(m23, 'all')*0.007);
    
    bg31 = imbinarize(m31, mean(m31, 'all')*0.003);
    g31 = imbinarize(m31, mean(m31, 'all')*0.007);
    bg32 = imbinarize(m32, mean(m32, 'all')*0.003);
    g32 = imbinarize(m32, mean(m32, 'all')*0.007);
    bg33 = imbinarize(m33, mean(m33, 'all')*0.003);
    g33 = imbinarize(m33, mean(m33, 'all')*0.007);
    
    bgMask4 = [bg11 bg12 bg13; bg21 bg22 bg23; bg31 bg32 bg33];
    greixMask4 = [g11 g12 g13; g21 g22 g23; g31 g32 g33];
    
    for i = 1:x
        for j = 1:y
            if bgMask4(i, j) == 1
                carn = carn + 1;
                if greixMask4(i, j) == 1
                    greix = greix + 1;
                end
            end
        end
    end

    percentatgeGreix = greix / carn * 100;
    res = ["Binaritzat metode 1" s percentatgeGreix];
    resultats = [resultats; res];
    
    
    % Mètode 2
    % Binarització d’una imatge amb un llindar ? calculat com 
    % ?·(Imax - Imin) + Imin, on Imax i Imin són els valor màxim i mínim 
    % de nivell de gris en les imatges i alfa un valor entre 0 i 1.
    
    lmax = max(max(im1));
    lmin = min(min(im1));
    lambdaBG = 0.4*(lmax-lmin) + lmin;
    bgMask5 = im1 > lambdaBG;
    lambda = 0.75*(lmax-lmin) + lmin;
    greixmask5 = im1 > lambda;
    
    carn = 0;
    greix = 0;
     for i = 1:x
        for j = 1:y
            if bgMask5(i, j) == 1
                carn = carn + 1;
                if greixmask5(i,j) == 1
                    greix = greix + 1;
                end
            end
        end
     end   
    
    percentatgeGreix = greix / carn * 100;
    res = ["Binaritzat metode 2" s percentatgeGreix];
    resultats = [resultats; res];
    
    
    %% Resultats
    
    figure, imshow(im1), title('imatge original');
    figure('Position', [90 90 1200 600]), subplot(2, 5, 1), imshow(bgMask), title('hardcoded');
    subplot(2, 5, 2), imshow(bgMask2), title('hist');
    subplot(2, 5, 3), imshow(imNoBG), title('auto');
    subplot(2, 5, 4), imshow(bgMask4), title('metode 1');
    subplot(2, 5, 5), imshow(bgMask5), title('metode 2');

    subplot(2, 5, 6), imshow(greixMask);
    subplot(2, 5, 7), imshow(greixMask2);
    subplot(2, 5, 8), imshow(greixMask3);
    subplot(2, 5, 9), imshow(greixMask4);
    subplot(2, 5, 10), imshow(greixmask5);
  
        
    disp('Press a key to delete all the results of the actual image and continue with the next image')  % Al fer click esborrem tots els plots generats en aquesta iteració i comencem una nova iteracio
    pause;
    
    close all
    
end

resultats % mostra la taula de resultats
xlswrite('resultats.xlsx',resultats) % guarda els resultats en un arxiu excel



