% x = 1; n = 0; while 1+x > 1, x = x/2, n = n + 1, pause(.02), end
% Este programa itera dividiendo x entre 2 hasta que 1+x no sea > 1, esto ocurre cuando x es igual a epsilon de maquina / 2.
% Como octane trabaja con doble precision esto ocurre cuando x es igual a 2^-53 entonces tiene 53 lineas de salida.
% La ultima linea es x = 2^-53 y la anterior x = 2^-52. (epsM/2 y epsM respectivamente).

% x = 1; n = 0; while x+x > x, x = 2 * x, n = n + 1, pause(.02), end
% Este programa itera multiplicando x por 2 hasta que x+x no sea > x, esto ocurre cuando es inf (cuando x supera máximo representable).
% En doble precision esto ocurre cuando x > (2 - epsM)*2^1023, en especifico cuando x = 2^1024 entonces tiene 1024 lineas de salida.
% La ultima linea es x = 2^1024 y la anterior x = 2^1023.

x = 1; n = 0; while x+x > x, x = x/2, n = n + 1, pause(.02), end
% Este programa itera dividiendo x entre 2 hasta que x+x no sea > x, esto ocurre cuando x = 0.
% Esto ocurre cuando x es el menor numero mayor a 0 representable, al dividirlo entre 2 lo iguala a 0.
% Se muestran 1075 valores de x siendo el ultimo 0 y el anterior a ese 2^(-1074). El menor numero representable mayor a 0.
% Notar que este numero es subnormal.