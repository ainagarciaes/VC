function [excentricitat, elongacio, compacitat] = PropsGeo(imBin)
    [llargada, amplada] = Tamany(imBin);
    [area, perimetre] = AreaPerimetre(imBin);
    if (llargada > amplada)
        excentricitat = llargada/amplada;
    else 
        excentricitat = amplada/llargada;
    end
    elongacio = llargada/amplada;
    compacitat = perimetre^2/area;
end
