n = 16;
a = 1;
areas = zeros(1, n);
err_rel = zeros(1, n);
for i=1:n
  delta = 10^(-i);
  b = delta;
  A_teorico = ((a*b)/2);
  c = sqrt(1 + delta^2);
  area = ej11(a, b, c)
  err_rela = abs(area - A_teorico)/A_teorico
endfor

areas;
err_rel;