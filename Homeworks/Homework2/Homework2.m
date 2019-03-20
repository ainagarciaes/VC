imatges = ['F1011flb.bmp'; 'F1019flb.bmp'; 'F1031flb.bmp'; 'F1051flb.bmp'; 'F1053flb.bmp'; 'F1059flb.bmp';'F1064flb.bmp';'F1079flb.bmp';'F1083flb.bmp'; 'F1096flb.bmp';'F1097flb.bmp';'F1101flb.bmp';'F1102flb.bmp';'F1103flb.bmp'];
resultats = ["Mètode" "Imatge" "Percentatge de Greix"];

for k = 1:1
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

    % POSAR AL FINAL AMB SUBPLOTS
    %figure, imshow(bgMask);
    %figure, imshow(greixMask);

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

    percentatgeGreix = greix / carn * 100
    res = ["Binaritzat ll.preprogramat" s percentatgeGreix];
    resultats = [resultats; res];
    
    %% Part 3, binaritzat a partir de llindar a ull del histograma
    h = histogram(im1);
    [t1, k] = ginput(2) % t1 value determines the threshold values

    bgMask2 = imbinarize(im1, t1(1)/255);
    greixMask2 = imbinarize(im1, t1(2)/255);

    % POSAR AL FINAL AMB SUBPLOTS
    %figure, imshow(bgMask2);
    %figure, imshow(greixMask2);

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

    percentatgeGreix = greix / carn * 100
    res = ["Binaritzat ll.histograma" s percentatgeGreix];
    resultats = [resultats; res];
    
    %% Part 4, trobar llindars de forma automatica
    level = graythresh(im1)
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

    percentatgeGreix = (x*y - carn - fons) * 100/carn 
    res = ["Binaritzat ll.automàtic" s percentatgeGreix];
    resultats = [resultats; res];
    
    %% Part 5, utilitzacio d'altres metodes

    % P-Tile thresholding

    % Mètode 2
    
    
    
    %% Resultats
    
    figure, imshow(im1), title('imatge original');
    figure, subplot(2, 5, 1), imshow(bgMask), title('hardcoded');
    subplot(2, 5, 2), imshow(bgMask2), title('hist');
    subplot(2, 5, 3), imshow(bgMask3), title('auto');
    % 4 per metode nostre 1
    % 5 per metode nostre 2
    subplot(2, 5, 6), imshow(greixMask);
    subplot(2, 5, 7), imshow(greixMask2);
    subplot(2, 5, 8), imshow(greixMask3);
    % 9 per metode nostre 1 greix
    % 10 per metode nostre 2 greix
    
end

resultats

%im1 = imread('F1011flb.bmp'); % Llegim la imatge
%im1 = imcrop(im1); % Retallem la imatge manualment



