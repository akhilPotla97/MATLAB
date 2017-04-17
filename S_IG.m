function S_IG = S_IG(a,T)
% S_IG returns the entropy of a substance (J/mol K)
% assuming it is an ideal gas with heat capacity parameters
% where the vector a is the 4 component vector 
% listed in Sandler Appendix AII

% this is only the temperature contibution to the entropy of 
% an ideal gas. You must also add in the pressure contribution seperately!

% convert to correct values
p(1) = a(4) * 1e-9/3;
p(2) = a(3) * 1e-5/2;
p(3) = a(2) * 1e-2;
p(4) = 0;
S_IG = polyval(p,T)+a(1)*log(T);



