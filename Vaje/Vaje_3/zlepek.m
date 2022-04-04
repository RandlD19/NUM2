function zx = zlepek(X,Z,x)
% Opis:
%  Funkcija zlepek vrne vrednosti polinomskega zlepka.
%
% Definicija:
%  zx = zlepek(X,Z,x)
%
% Vhod:
%  X    vrstica velikosti n+1, ki predstavlja delilne tocke definicijskega
%       intervala zlepka,
%  Z    tabela velikosti n x (d+1), v kateri i-ta vrstica doloca i-ti
%       polinomski kos zlepka
%       Z(i,1)*(x-X(i))^d + ... + Z(i,d) (x-X(i)) + Z(i,d+1),
%  x    vrstica tock na definicijskem intervalu.
%   
% Izhod:
%  z    vrstica vrednosti polinomskega zlepka v tockah iz x.
[visina_x, dolzina_x] = size(x);
[visina, dolzina] = size(X);
[visina_z, dolzina_z] = size(Z);

zx = zeros(1, dolzina_x);
j=1;
for i=1:dolzina-1
    f = @(x) Z(i, dolzina_z);
    for ind=1:dolzina_z-1
        f = @(x) f(x) + Z(i, dolzina_z-ind)*(x-X(i))^ind;
    end
    while x(j) < X(i+1)
        zx(1, j) = f(x(j));
        j = j+1;
    end
end




