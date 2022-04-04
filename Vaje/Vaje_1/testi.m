% 1 NALOGA:
% % Koliko je B(10, 5)(sqrt(3)/2)?
% rez1 = bernstein(10, 5, sqrt(3)/2)
% 
% % Nariši bernsteinove bazne polinome za n = 5
% xx = linspace(0,1,1000);
% n = 5;
% hold on
% for i=0:n
%     bern = bernstein(n, i, xx);
%     plot(xx, bern)
% end
% hold off

% 2. NALOGA:
% Bernsteinovi polinomi B_2(F) za n = 3, 4, ..., 10
xx = linspace(0, 1, 1001);
f = @(x) 1./(3*x+1);

hold on
for n=2:10
    bernPol = bernpoly(f, n, xx);
    % izracunaj normo ||f-B_n(f)||_inf,X_1000
    norma = max(abs(f(xx)-bernPol))
    plot(xx, bernPol)
end
hold off

