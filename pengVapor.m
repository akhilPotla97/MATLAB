function [pengVapor] = pengVapor( Tc,Pc,omega,T,P_guess)
% Calculates the vapor pressure based on the Peng Robinson EOS
pengVapor = zeros(size(T)); % Creating matrix large enough
R=8.314; % Universal gas constant
sub = [Tc Pc omega];
n = numel(T); % Number of Temperatures
P = P_guess;

for i=1:n    
    [a b dadt A B] = PR_parameters(P,T(i),sub);
    Z = PR_Z(A,B);
    
    % Need 3 Z's for this
    % Keep going till you find 3 Z's
    while length(Z) ~= 3
        P = P - 10000;
        [a b dadt A B] = PR_parameters(P,T(i),sub);
        Z = PR_Z(A,B);    
    end
    
    % Finding the fugacity
    fug_L = P*exp(log_phi_peng(A,B,Z(1)));
    fug_V = P*exp(log_phi_peng(A,B,Z(3)));
    
    % Iterating the values of P till you get a small enough error
    while abs((fug_L-fug_V)/fug_L) >= 0.0001
        P = P*fug_L/fug_V;
        [a b dadt A B] = PR_parameters(P,T(i),sub);
        Z = PR_Z(A,B);
        fug_L = P*exp(log_phi_peng(A,B,Z(1)));
        fug_V = P*exp(log_phi_peng(A,B,Z(3)));
    end
    pengVapor(i) = P;
end
disp(pengVapor)
end