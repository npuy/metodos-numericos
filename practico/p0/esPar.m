function res = esPar(n)
    mod_2 = mod(n, 2);
    if mod_2 == 0
        res = 1;
    else
        res = 0;
    end
end