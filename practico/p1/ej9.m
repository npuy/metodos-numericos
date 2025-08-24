func = @(n, pn) e - (n + 1) * pn
tope = 20
n = 0
pn = 1
for n = 1:tope
    n
    pn = func(n, pn)
end

func = @(n, pn) (e - pn)/n
pn = 1/8
n = 20
for i = 1:n-1
    pn = func(n - i, pn)
    n - i
end