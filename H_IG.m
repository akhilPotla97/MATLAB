function H_IG = H_IG(a,T)
% H_IG returns the molar enthalpy of a substance (J/mol)
% assuming it is an ideal gas with heat capacity parameters
% where the vector a is the 4 component vector 
% listed in Sandler Appendix AII

% convert to correct values
p(1) = (a(4) * 1e-9) /4;
p(2) = (a(3) * 1e-5) /3;
p(3) = (a(2) * 1e-2) /2;
p(4) = a(1);
H_IG = T*polyval(p,T); % set H_IG = 0 at T = 0

