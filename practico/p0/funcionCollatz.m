function res = funcionCollatz(m)
    if esPar(m)
        res = m / 2;
    else
        res = 3 * m + 1;
    end
end