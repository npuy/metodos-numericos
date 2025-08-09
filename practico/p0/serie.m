function res = serie(funcion, n)
    res = funcion(0);
    for i = 1:n
        res = res + funcion(i);
    end
end