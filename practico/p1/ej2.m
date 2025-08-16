% En el formato se simple precisión (32 bits) εM es 2^-23
% El mayor numero representable es (2 - εM)*2^127
% El menor numero representable es 2^(-126) (sin contar los números sub normales)

g = @(t) (t^3)/(t - sin(t));
x = 5*10^(-4);
x_single = single(x);

g_x = g(x)
g_x_single = g(x_single)

% Esto ocurre porque en precision simple x - sin(x) = 0

denominador_single = x_single - sin(x_single)