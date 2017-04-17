function Cp = Cp_star(a,T)
% heat capacity returns the heat capacity of a substance
% where the vector a is the 4 component vector 
% listed in Sandler Appendix AII

% convert to correct values
p(1) = a(4) * 1e-9;
p(2) = a(3) * 1e-5;
p(3) = a(2) * 1e-2;
p(4) = a(1);
Cp = polyval(p,T);