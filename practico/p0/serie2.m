function res = serie2(funcion, epsilon)
    n = 0;
    res = 0;
    control = funcion(n);
    while control >= epsilon
        res = res + control;
        n++;
        control = funcion(n);
    end
    res = res + control;
end