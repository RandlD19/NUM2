function Pk = chaikin(P,k)
% Opis:
%  chaikin izvede Chaikinov postopek
%
% Definicija:
%  Pk = chaikin(P,k)
%
% Vhodna podatka:
%  P    matrika velikosti (m+2) x d, v kateri vsaka vrstica
%       predstavlja d-dimenzionalno tocko
%  k    število korakov postopka
%
% Izhodni podatek:
%  Pk   matrika velikosti (2^k*m+2) x d, katere vrstice predstavljajo 
%       točke, dobljene po k korakih Chaikonovega postopka
m = max(size(P));
d = min(size(P));
Pk = zeros(2^k*m+2,d);
prejsna = P;

% for i=1:k
%     for j=0:(m-1)
%         if j == 0
%             Pk(j+1,:) = 3/4*prejsna(j+1,:) + 1/4*prejsna(j+2,:);
%         elseif j == 1
%             Pk(j+1,:) = 1/4*prejsna(j,:) + 3/4*prejsna(j+1,:);
%         elseif mod(j,2) == 0
%             Pk(j+1,:) = 3/4*prejsna((j/2)+1,:) + 1/4*prejsna((j/2)+1+1,:);
%         elseif mod(j,2) == 1
%             Pk(j+1,:) = 1/4*prejsna(((j-1)/2)+1,:) + 3/4*prejsna(((j+1)/2)+1,:);
%         end
%         disp(Pk)
%         disp(j)
%     end
%     prejsna = Pk;
% end

for i=0:k-1
    for j=0:((2^(i))*(m))-2
        Pk(2*j + 1,:) = 3/4*prejsna(j+1,:) + 1/4*prejsna(j+2,:);
        Pk(2*j + 2,:) = 1/4*prejsna(j+1,:) + 3/4*prejsna(j+2,:);
        disp(Pk)
        disp(j)
    end
    prejsna = Pk;
end
end
