hs = [10^-2, 10^-3, 10^-4];

for h = hs
    h
    e1 = (1 + h)^(1/h)
    err1 = abs(e1 - e)
    e2 = 2*(1 + h/2)^(2/h) - (1 + h)^(1/h)
    err2 = abs(e2 - e)
end