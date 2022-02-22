M= [1 1 0 0; -1 1 pi/3 (pi^2)/9; 1 1 2*pi/3 4*(pi^2)/9; -1 1 pi pi^2];
b = [0;sqrt(3)/2;sqrt(3)/2;0];

M\b;

g = @(x) cos(x) +9*sqrt(3)/(2*pi*pi)*x -9*sqrt(3)/(4*pi);
x = linspace(0, pi, 10001);
plot(x, g(x));
y1 = fzero(g, 1/2);
y2 = fzero(g, 3/2);
y3 = fzero(g, 3);

res = @(x) cos(x) +9*sqrt(3)/(2*pi*pi)*x -9*sqrt(3)/(4*pi); % popravi

