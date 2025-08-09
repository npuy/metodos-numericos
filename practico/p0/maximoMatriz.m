function res = maximoMatriz(matriz)
    n = size(matriz, 1);
    m = size(matriz, 2);
    res = matriz(1,1);
    for i = 1:n
        for j = 1:m
            res = maximo(matriz(i,j), res);
        end
    end
end