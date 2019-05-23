% normalitza la imatge i la retorna en components Red & Blue
function rb = NormalitzaRGB(imatge)
    aux(:,:) = imatge(:,:,1) + imatge(:,:,2) + imatge(:,:,3);
    [x, y, z] = size(imatge);
    rb = uint8(zeros(x, y, 2));

    rb(:,:,1) = uint8(255*imatge(:,:,1)./aux);
    rb(:,:,2) = uint8(255*imatge(:,:,3)./aux);
end