% a) El valor εM se puede obtener con un simple algoritmo:
eps = 1.0;
while 1.0 + eps > 1.0
  eps = eps / 2.0;
end
eps_M = 2.0 * eps

% b) El mayor numero representable se puede obtener con el siguiente algoritmo:
x = 1.0;
prev = x;
while isfinite(x)
  prev = x;
  x = x * 2.0;
end
max_rep = prev

% c) El menor numero representable se puede obtener con el siguiente algoritmo:
x = 1.0;
while (x/2.0) > 0.0
  x = x/2.0;
end
min_pos = x
