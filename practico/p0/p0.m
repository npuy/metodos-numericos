% Ejercicio 1 (Funciones). --------------------------------------------------------------------------
% a) Escribir una funci´on llamada norma que reciba un vector v y devuelva la norma eucl´ıdea de v.
u = [1,2,3];

u_norma = norma(u);

u_norm = norm(u);

% b) Escribir una funci´on llamada sustitucion que reciba como par´ametros una matriz A, un vector
% fila v del mismo largo que la cantidad de columnas de A, y un n´umero natural n, y devuelva la
% matriz A luego de sustituir la fila n por el vector v.
matriz = [
    1,2,3;
    4,5,6;
    7,8,9
];
vector = [3,2,1];
n = 2;

m_sust = sustitucion(matriz, vector, n);

% c) Escribir una funci´on llamada intercambio que reciba como par´ametros una matriz A y naturales
% n y m, y devuelva la matriz A luego de intercambiar las filas n y m.
m_int = intercambio(matriz, 1, 2);

% Ejercicio 2 (If). --------------------------------------------------------------------------
% a) Escribir una funci´on maximo que reciba dos reales a y b, y devuelva el m´aximo entre ellos.
a = 1.2;
b = 2.3;
num_max = maximo(a, b);

% b) Escribir una funci´on signo que reciba un real x y devuelva 1 si x>0, 0 si x= 0 y -1 si x<0.
num_signo = signo(a);

% c) Escribir una funci´on esPar que reciba un natural n y devuelva 1 si n es par, o 0 si es impar.
% [Sugerencia: la funci´on mod(n,m) devuelve el resto de la divisi´on entera de n entre m.]
num_esPar = esPar(n);

% Ejercicio 3 (For). --------------------------------------------------------------------------
% a) Modificar la funci´on maximo del ejercicio anterior para que reciba una matriz A y devuelva el
% elemento m´aximo de A.
num_maximoMatriz = maximoMatriz(matriz);

% b) Escribir una funci´on serie que reciba una funci´on f y un natural N y devuelva la suma parcial
% N
% n=0 f(n).
cuadrado = @(x) x ^ 2; % Funcion anonima
num_serie = serie(cuadrado, 3);

% Ejercicio 4 (While). --------------------------------------------------------------------------
% Escribir una funci´on serie2 que reciba una funci´on decreciente f y un real
% positivo epsilon y devuelva la suma parcial N
% n=0 f(n), donde N es el primer natural tal que
% f(N)<epsilon.
func = @(x) 1/(x+1);
epsilon = 1/10;
num_serie2 = serie2(func, epsilon);

% Ejercicio 5 (Fibonacci). --------------------------------------------------------------------------
% La sucesi´on de Fibonacci se define de la siguiente forma:
% f0 = 1, f1 = 1, y fn+1 = fn + fn−1 ∀n≥1.
% a) Escribir una funi´on fibonacci que reciba un n´umero natural n y devuelva un vector conteniendo
% los primeros n+1 n´umeros en la sucesi´on de Fibonacci.
n = 20;
res_fib = fibonacci(n);

% b) Demostrar que, cuando n→∞, fn+1 fn →ϕ= 1+√5
% 2 (el llamado n´umero ´aureo). Usar la funci´on
% fibonacci para calcular, en forma vectorizada los cocientes f1 f20 f0...f19.
coeficientes = res_fib(2:end) ./ res_fib(1:end-1);
n_aureo = (1+sqrt(5))/2;

% Ejercicio 6 (Collatz). --------------------------------------------------------------------------
% b)
res_collatz = collatz(n);

% c)
vector_semillas = 1:1000;

mayor_largo = [0,0];
for n = vector_semillas
    res = collatz(n);
    largo_res = length(res);
    if largo_res >= 200
        disp("error en semilla: ");
        disp(n);
    end
    if largo_res > mayor_largo(1)
        mayor_largo(1) = largo_res;
        mayor_largo(2) = n;
    end
end
mayor_largo
