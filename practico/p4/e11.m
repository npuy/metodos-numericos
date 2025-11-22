f = @(x) exp(x / 4) - x;
x_esperado = fzero(f, 1.5);
fprintf('Resultado esperado %.8f\n', x_esperado);

x0 = 1.5;
tol = 1e-12;
fprintf('Fijamos x0 = %.2f y tol = %.1e\n', x0, tol);

fprintf('\n');
fprintf('parte b)\n');
g = @(x) exp(x / 4);

xk = x0;
iter = 0;
while abs(f(xk)) > tol
    xk = g(xk);
    iter = iter + 1;
endwhile
fprintf('Resultado: x = %.8f, iteraciones = %d\n', xk, iter);

fprintf('\n');
fprintf('parte d)\n');
alpha_esperado = 4 / (4 - x_esperado);
fprintf('Alpha esperado: %.8f\n', alpha_esperado);

alpha0 = 0
[xk, alpha_k, iter] = e11_metodo_iterativo(x0, alpha0, tol);
fprintf('Resultado: x = %.8f, alpha = %.8f, iteraciones = %d\n', xk, alpha_k, iter);

alpha0 = 0.5
[xk, alpha_k, iter] = e11_metodo_iterativo(x0, alpha0, tol);
fprintf('Resultado: x = %.8f, alpha = %.8f, iteraciones = %d\n', xk, alpha_k, iter);

alpha0 = 1
[xk, alpha_k, iter] = e11_metodo_iterativo(x0, alpha0, tol);
fprintf('Resultado: x = %.8f, alpha = %.8f, iteraciones = %d\n', xk, alpha_k, iter);

alpha0 = 1.5
[xk, alpha_k, iter] = e11_metodo_iterativo(x0, alpha0, tol);
fprintf('Resultado: x = %.8f, alpha = %.8f, iteraciones = %d\n', xk, alpha_k, iter);

alpha0 = 2
[xk, alpha_k, iter] = e11_metodo_iterativo(x0, alpha0, tol);
fprintf('Resultado: x = %.8f, alpha = %.8f, iteraciones = %d\n', xk, alpha_k, iter);