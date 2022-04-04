function Bf = bernpoly(f,n,x)
% bernpoly vrne vrednosti Bernsteinovega polinoma stopnje n za funkcijo f v
% tockah x.
%
% Bf = bernpoly(f,n,x)
%
% Vhod:
%  f    funkcija: @(x) f(x),
%  n    stopnja Bernsteinovega polinoma,
%  x    seznam abscis.
%
% Izhod:
%  Bf   seznam vrednosti Bernsteinovega polinoma stopnje n za funkcijo f v
%       tockah iz seznama x.

vsota = 0;
for i=0:n
    vsota = vsota + f(i/n)*bernstein(n, i, x);
Bf = vsota;
end