function odvod = diferenca(f, k, metoda, h, x0)
% Opis:
%  diferenca izračuna odvod funkcije f v točki x0 na podlagi diference, 
%  določene z metodo
%
% Definicija:
%  odvod = diferenca(f, k, metoda, h, x0)
%
% Vhodni podatki:
%  f        funkcija,
%  k        stopnja odvoda (k=1, razen pri simetrični diferenci za 2 odvod, kjer je k=2),
%  metoda   metoda za izračun odvoda (prema, obratna ali simetrična diferenca),
%  h        korak,
%  x0       točka, v kateri nas zanima odvod funkcije f. 
%
% Izhodni podatek:
%  odvod    odvod funkcije f v točki x0 izračunan z ustrezno metodo.

if metoda == "prema"
    odvod = (f(x0 + h) - f(x0)) / h;
end

if metoda == "obratna"
    odvod = (f(x0) - f(x0 - h)) / h;
end

if (metoda == "simetricna") && (k == 1)
    odvod = (f(x0 + h) - f(x0 - h)) / (2*h);
end

if (metoda == "simetricna") && (k == 2)
    odvod = (f(x0 - h) - 2*f(x0) + f(x0 + h)) / h^2;
end


end

