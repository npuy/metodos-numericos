function res = norma(vector)
    res = vector .* vector;
    res = sum(res);
    res = sqrt(res);
end