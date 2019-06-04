function labels_res = Decisor_histograma_color(histo, labels)
    histosColor = readtable('histoscolor');
    [x, y] = size(histosColor);
    
    % inicialitzo a -1 tot el vector de pesos
    labels_total = table2array(histosColor(:,1));
    labels_res = (-1).* ones(3, 1);
    
    for i=1:x % entre 1 i nombre de models
        histogram = table2array(histosColor(i,2:y));
        label = labels_total(i);
        distancia = pdist2(histo, histogram, 'correlation');
        if ((labels_res(label) == -1) || (labels_res(label) > distancia))
            labels_res(label) = distancia;
        end
    end
    labels_res = labels_res + labels;
end