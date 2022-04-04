function zx = linzlepek(X,Y,x)
% Opis:
%  Funkcija linzlepek vrne vrednosti zveznega linearnega zlepka, ki
%  interpolira dane vrednosti v delilnih tockah definicijskega intervala.
%
% Definicija:
%  zx = linzlepek(X,Y,x)
%
% Vhod:
%  X    vrstica, ki predstavlja delilne tocke definicijskega intervala
%       zlepka,
%  Y    interpolacijske vrednosti,
%  x    vrstica tock na definicijskem intervalu.
%
% Izhod:
%  zx   vrstica vrednosti linearnega zlepka v tockah iz x.
% diff funkcija (zaporedni zamiki)
% polyval
[visina, dolzina] = size(Y);
Z = zeros(dolzina-1, 2);
for i=2:dolzina
    Z(i-1,2) = Y(i);
    Z(i-1, 1) = (Y(i)-Y(i-1))/(X(i)-X(i-1));
end
zx = zlepek(X, Z, x);
end