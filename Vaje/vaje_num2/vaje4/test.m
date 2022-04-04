b = [-1 0;-1/2 1;1/2 1;1 0];
t = linspace(0,1,11);

a = bezier(b,t)

plot(a(:,1), a(:,2))
