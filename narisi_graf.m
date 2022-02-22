x = linspace(0,1,1001);
n = 3;
% for i = 0:n
% plot(x, bernstein(n, i, x))
% hold on 
% end
% hold off


f = @(x) 1./(3*x +1);
plot(x, f(x))
hold on
for n=2:10
    plot(x, bernpoly(f, n, x))
    hold on
    norm(f(x)-bernpoly(f, n, x), "inf")
end

