function H = PR_H(P,T,a,b,dadt,A,B,Z)
%PR_H Outputs enthalpy departure function in Joules/mol
%for the Peng-Robinson EOS
% Note Z must be singularly valued
R = 8.314;
H = R*T*(Z-1)+ ((T*dadt - a)/(2*sqrt(2)*b))*log((Z +(1 +sqrt(2))*B)/(Z +(1 -sqrt(2))*B));
end

