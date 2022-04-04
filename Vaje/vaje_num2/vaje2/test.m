% m1 = -1/2*exp(1/2) + 1/4 * exp(1) + 1/4
% y = log(exp(1) - 1);
%r1 = exp(y)-exp(1)*y + y-1/2*exp(1/2)+1/4*exp(1)-3/4
% abs(r1 - m1)

% g = @(x) cos(x)+9*sqrt(3)/(2*pi*pi)*x-9*sqrt(3)/(4*pi)
% x = linspace(0,pi, 1001);
% plot(x,g(x))
% y1 = fzero(g,1/2)
% y2 = fzero(g, 3/2)
% y3 = fzero(g,3)
% 
% r = @(x)sin(x)+9*sqrt(3)/(4*pi*pi)*x.^2-9*sqrt(3)/(4*pi)*x
% 
% plot(x,r(x))

E = [0, pi/3, 2*pi/3, pi];
