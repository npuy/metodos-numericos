function [xk, alpha_k, iter] = e11_metodo_iterativo(x0, alpha0, tol)
  xk = x0;
  alpha_k = alpha0;
  iter = 0;

  f = @(x) exp(x / 4) - x;

  while true
    x_next = alpha_k * exp(xk / 4) + (1 - alpha_k) * xk;
    alpha_next = 4 / (4 - xk);

    iter = iter + 1;

    xk = x_next;
    alpha_k = alpha_next;
    if abs(f(xk)) < tol
      break;
    endif
  endwhile
endfunction
