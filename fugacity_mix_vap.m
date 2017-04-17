function [fug,Z_v] = fugacity_mix_vap(Av,Bv,k,x,P)
% to get fugacity of mixture, have the components in the vector x
%
% the fugacity comes out in the vector fug
N= length(Av);
Am = 0;
for i = 1:N    
    for j = 1:N
        Am = Am + x(i)*x(j)*sqrt(Av(i)*Av(j))*(1-k(i,j));
    end
end
Bm = sum(x.*Bv);
%find B_mix by weighted sum
% get vapor root
%===================================================
% make sure it is the highest positive root
Z = PR_Z(Am,Bm);
    % take highest non-negative root for vapor
    if length(Z) == 1
        Z_v = Z(1);% just in case only one root
    else
        Z_v = Z(3);
    end
%===================================================
%PART THREE: FUGACITY CALCULATION
%EQN: 9.4-10
for i = 1:N
    temp(i) = 0;
    for j = 1:N
        temp(i) = temp(i) + x(j)*sqrt(Av(i)*Av(j))*(1-k(i,j));
    end
    f(i) = (Z_v-1)*Bv(i)/Bm - log(Z_v-Bm) + ...
        ((-Am)/Bm/sqrt(8)) * (2*temp(i)/Am - Bv(i)/Bm) *...
        log ((Z_v+(1+sqrt(2))*Bm)/(Z_v+(1-sqrt(2))*Bm));
    fug(i) = P*x(i)*exp(f(i));
    %ZZ(i+3) = fug(i);
end