form = @(x) ((x * x + 2)/2)*(1/x)
root = sqrt(2)
n = 1
an = 2
err = an - root
while an - root > 0
    n = n + 1
    an = form(an)
    err = an - root
end