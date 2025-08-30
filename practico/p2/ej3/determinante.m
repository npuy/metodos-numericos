function res = determinante(A)
[L,U,p,sig] = lutx_cus(A);
res = prod(diag(U)) * sig;
end