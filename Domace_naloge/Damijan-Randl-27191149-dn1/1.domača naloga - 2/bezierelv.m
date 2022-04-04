function Be = bezierelv(B)
% Opis:
%  bezierelv izvede visanje stopnje dane Bezierjeve krivulje
%
% Definicija:
%  Be = bezierelv(B)
%
% Vhodni podatek:
%  B    matrika velikosti (n+1) x d, v kateri vsaka vrstica
%       predstavlja d-dimenzionalno kontrolno tocko
%       Bezierjeve krivulje stopnje n,
%
% Izhodni podatek:
%  Be   matrika velikosti (n+2) x d, v kateri vsaka
%       vrstica predstavlja d-dimenzionalno kontrolno tocko
%       Bezierjeve krvulje stopnje n+1, ki ustreza dani
%       Bezierjevi krivulji
n = max(size(B))-1;
d = min(size(B));

Be = zeros(n+2, d);

Be(1,:) = B(1,:);

for i=2:n+1
    Be(i,:) = ((i-1)/(n+1)).*B(i-1,:) + (1-((i-1)/(n+1))).*B(i,:);
end
Be(n+2,:) = B(n+1,:);

end



