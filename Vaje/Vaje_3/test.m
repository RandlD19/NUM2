% Izračunaj vrednost zlepka v poljubnih točkah z intervala [0, 1] za
% funkcijo f(x) = sin(2*pi*x)

f = @(x) sin(2*pi*x);
xx = linspace(0, 1, 100001);

X = linspace(0, 1, 8);
Y = f(X);

zx = linzlepek(X, Y, xx);

m = 1;

max(abs(f(xx)-zx))

% while max(abs(f(xx)-zx)) > 10^(-6)
%     X = linspace(0, 1, m);
%     Y = f(X);
%     zx = linzlepek(X, Y, xx);
%     m = m+1;
% end
    

hold on
plot(xx, f(xx))
plot(xx, zx)
hold off
