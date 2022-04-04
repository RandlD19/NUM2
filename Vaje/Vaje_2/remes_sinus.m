% Na vajah smo na tablo naredili en korak Remesovega postopka za funkcijo
% f(x) = sin(x) na intervalu [0,pi] z začetno množico točk E1 = [0,pi/3,(2*pi)/3,pi]
% Drugi korak postopka izvedemo v Matlabu.
f = @(x) sin(x);

% Določimo množico E2:
E2 = [0,pi/3,2.7327,pi];

% Določimo matriko sistema enačb
A = [1 1 0 0;
     -1 1 pi/3 pi*pi/9;
     1 1 2.7327 2.7327^2;
     -1 1 pi pi^2];
 
% Določimo desno stran sistema enačb
b = [f(E2(1));f(E2(2));f(E2(3));f(E2(4))];

% Rešimo sistem enačb in dobimo vektor koeficientov: [m2;c2;b2;a2]
koef = A\b;
m2 = koef(1);
c2 = koef(2);
b2 = koef(3);
a2 = koef(4);

% Določimo aproksimacijski polinom
p2 = @(x) a2*x.^2 + b2*x + c2;

% Določimo residual in ga narišemo
r2 = @(x) f(x)-p2(x);
x = linspace(0,pi,1001);
figure
plot(x,r2(x))

% Vzamemo absolutno vrednosti residuala
r2_abs = @(x) abs(f(x)-p2(x));

% Absolutno vrednost še negiramo, da bomo lahko uporabili fminbnd
r2_abs2 = @(x) -r2_abs(x);

% Narišemo
figure
hold on
plot(x,r2_abs(x));
plot(x,r2_abs2(x));
hold off

% Poiščemo y2, pri katerem r2 doseže maksimalno absolutno vrednost
y2 = fminbnd(r2_abs2,0,pi)

% Preverimo, za koliko se še razlikujeta absolutni vredsnoti r2(y2) in m2
abs(r2(y2))-abs(m2)


