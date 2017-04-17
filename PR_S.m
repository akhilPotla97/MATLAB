function S = PR_S(P,T,a,b,dadt,A,B,Z)
%PR_S Outputs entropy departure function in Joules/mol K
%for the Peng-Robinson EOS
% Note Z must be singularly valued
R = 8.314;
S = R*log(Z-B)+ (dadt/(2*sqrt(2)*b))*log((Z +(1 +sqrt(2))*B)/(Z +(1 -sqrt(2))*B));
end

