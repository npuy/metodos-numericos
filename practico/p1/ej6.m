f = @(x) sin(5*x)

fPrimaEnUno = 5*cos(5)

sigmaUno = @(h) (f(1+h)-f(1-h))/(2*h)

errorAbsoluto = @(h) abs(sigmaUno(h) - fPrimaEnUno)

ks = 1:20

hs = 0.1 .^ ks

resultados = zeros(1, 20);
for i = 1:length(hs)
    resultados(i) = errorAbsoluto(hs(i));
end

derivadaCotaSuperiorError = @(h) 5*5*sin(5)*h/6 + f(1)*eps/(2*h^2)

hMinimizaError = abs(fzero(derivadaCotaSuperiorError, 1))

errMin = errorAbsoluto(hMinimizaError)

loglog(hs, resultados)
grid on;
hold on;
loglog(hMinimizaError, errMin, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r')
pause
