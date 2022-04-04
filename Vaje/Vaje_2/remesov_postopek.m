% REMESOV POSTOPEK:
% S pomočjo remesovega postopka poiščite linearni polinom p(x) = ax+b,
% ki predstavlja najboljšo enakomerno aproksimacijo za funkcijo 
%                       f(x) = log(x) 
% na intervalu [1, 2]. Za začetno množico točk vzemite E_1 = {1, 3/2, 2}.
% Naredite 2 koraka postopka.

f = @(x) log(x);
E_1 = [1, 3/2, 2];

% sistem, ki določa polinom:
matrika = [ 1 1 E_1(1);
           -1 1 E_1(2);
            1 1 E_1(3)];

vektor = [f(E_1(1));f(E_1(2));f(E_1(3))];

koef = matrika\vektor;

m = koef(1);
a = koef(3);
b = koef(2);

p = @(x) a*x + b;

% residual
r = @(x) f(x) - p(x);
xx = linspace(1,2,1000);
% plot(xx, r(xx))

% za 2. korak potrebujemo maximum absulutne vrednosti residuala 
r_abs = @(x) abs(r(x));
r_abs_neg = @(x) -r_abs(x);

% y pri kateri je dosezen maximum
y = fminbnd(r_abs_neg, 1, 2)

% napaka
a + b

% 2. Korak:
E_2 = [1, y, 2];

matrika2 = [ 1 1 E_2(1);
           -1 1 E_2(2);
            1 1 E_2(3)];

vektor2 = [f(E_2(1));f(E_2(2));f(E_2(3))];

koef2 = matrika2\vektor2;

m2 = koef2(1);
a2 = koef2(2);
b2 = koef2(3);

p2 = @(x) a2*x + b2;
% residual
r2 = @(x) f(x) - p2(x);
xx = linspace(1,2,1001);
plot(xx, r2(xx))

r_abs = @(x) abs(r(x));
r2_abs = @(x) abs(r2(x));

a2+b2