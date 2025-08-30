% Ejercicio 2 (Sustituci ́on hacia atr ́as). Escribir una funci ́on x = atras(U,b) que tome como en-
% tradas una matriz triangular superior U y un vector columna b, y resuelva el sistema Ux = b
% mediante sustituci ́on hacia atr ́as.

function x = atras(U, b)
n = size(U, 1);
x = zeros(n, 1);
x(n) = b(n)/U(n,n);
for i = 1:n-1
    x(n-i) = (b(n-i) - (U(n-i,n-i:end) * x(n-i:end)))/U(n-i,n-i);
end
end