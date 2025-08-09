function res = collatz(m)
    cotaSuperior = 201;
    res = [m];
    n = 2;
    next = funcionCollatz(m);
    while (n < cotaSuperior && next != 1)
        res(n) = next;
        next = funcionCollatz(res(n));
        n++;
    end
    res(n) = next;
end