function D = decasteljau(b,t)
% Opis:
%  decasteljau vrne shemo de Casteljaujevega postopka za dan seznam
%  koordinat b pri danem parametru t
%
% Definicija:
%  D = decasteljau(b,t)
%
% Vhodna podatka:
%  b    seznam koordinat kontrolnih tock Bezierjeve krivulje stopnje n,
%  t    parameter, pri katerem racunamo koordinato (Bezierjeve krivulje)
%
% Izhodni podatek:
%  D    tabela velikosti n+1 x n+1, ki predstavlja de Casteljaujevo shemo
%       za koordinate b pri parametru t (element na mestu (1,n+1) je
%       koordinata Bezierjeve krivulje pri parametru t)
[visina_b, dolzina_b] = size(b);

D = zeros(dolzina_b);
D(:,1) = b;
for r=1:dolzina_b
    for i=1:dolzina_b-1
        
end
