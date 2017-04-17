function [a b dadt A B] = PR_parameters(P,T,substance)
% function outputs the PR parameters (a,b,da/dt, A, B) in a vector form
% param from the inputs P, T, and the substance where the substance is a
% vector of (Tc, Pc, omega)
% all values of P and T should be in SI units! (Pa and K)
R = 8.314; % in J/molK

% break out substance
Tc = substance(1);
Pc = substance(2);
omega = substance(3);

% calculate a and b
b = 0.0778*R*Tc/Pc;
kappa = 0.37464 + 1.54226*omega - 0.26992*omega^2;
alpha = (1+kappa*(1-sqrt(T/Tc)))^2;
% alpha = 1;
a = 0.45724*R^2*Tc^2*alpha/Pc;
dadt = -(0.45724*R^2*Tc^2*kappa/Pc)*sqrt(alpha/(T*Tc));

% calculate A and B
A = a*P/(R*T)^2;
B = b*P/(R*T);

%param = [a b da_dt A B];
end

