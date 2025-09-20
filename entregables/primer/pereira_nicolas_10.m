f30 = @(x) x.^30 ./ (5+x);
I30 = integral(f30, 0, 1) % I30 calculando la integral

% Parte (b): Recurrencia hacia adelante
N = 30;
I = zeros(N+1,1);
I(1) = log(6/5); % I0
for n = 1:N
    I(n+1) = 1/n - 5*I(n);
end
I(N+1) % I30

% Parte (c): Recurrencia hacia atras
N = 100;
I_back = zeros(N+1,1);
I_back(N+1) = 0; % Aproximacion inicial: I100 = 0
for n = N:-1:31
    I_back(n) = (1/n - I_back(n+1))/5;
end
I_back(31) % I30 con recurrencia hacia atras e I100 = 0

% Probar con otras aproximaciones iniciales
I_back(N+1) = 0.1; % I100 = 0.1
for n = N:-1:31
    I_back(n) = (1/n - I_back(n+1))/5;
end
I_back(31) % I30 con recurrencia hacia atras e I100 = 0.1

I_back(N+1) = 1; % I100 = 1
for n = N:-1:31
    I_back(n) = (1/n - I_back(n+1))/5;
end
I_back(31) % I30 con recurrencia hacia atras e I100 = 1