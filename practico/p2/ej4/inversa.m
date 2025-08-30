function inver = inversa(A)

[n,n] = size(A);
id = eye(n);

[L,U,p] = lutx(A);

inver = zeros(n);

for i = 1:n
    b = id(:,i);
    y = forward(L,b(p));
    x = backsubs(U,y);

    inver(:,i) = x;
end

end