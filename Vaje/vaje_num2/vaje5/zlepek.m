P = [-5 0; -4 4; -2 3; 0 -4; 2 2; 5 0; 7 5];

m = size(P, 1) - 2;
t = linspace(0,1,1000);

hold on
for i = 2:m+1
    B = [1/2 * P(i-1,:) + 1/2 * P(i,:);
        P(i,:);
        1/2 * P(i,:) + 1/2 * P(i+1,:)];
    b = bezier(B, t);
    plot(b(:,1), b(:,2));
    scatter(B(:,1), B(:,2))
     
end

plot(P(:,1), P(:,2))
scatter(P(:,1), P(:,2))

hold off