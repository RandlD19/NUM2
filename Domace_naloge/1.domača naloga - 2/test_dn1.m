% PRVI DEL:
% B = [-5/3 0; -16/3 4/3; -2 16/3; 0 18/5; 8/3 2];
% 
% bz = bezierelv(B)
% 
% sum(bz(:,1))
% 
% naj = 0;
% naj_id = 1;
% for i=1:max(size(bz))
%     if sqrt((bz(i,1)^2 + bz(i,2)^2)) > naj
%         naj = sqrt((bz(i,1)^2 + bz(i,2)^2)); 
%         naj_id = i;
%     end
% end
% 
% naj_oddaljena = bz(naj_id,:)
% naj_oddaljenost = naj

% DRUGI DEL:
P = [4 2; 1 4; -2 4; -4 -1;-2 -3 ;2 -2];
Pk = chaikin(P,2);

norm(Pk(1,:)- Pk(18,:), 2)