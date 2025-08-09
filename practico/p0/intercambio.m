function res = intercambio(matriz, m, n)
    res = matriz;
    res(n,:) = matriz(m,:);
    res(m,:) = matriz(n,:);
end