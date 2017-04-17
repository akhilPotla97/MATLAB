function log_phi=log_phi_peng(A,B,Z)
% gives the log of the Peng Robinson fugacity coefficent for the parameters A, B, and Z
% Note Z must be singularly valued
log_phi = (Z-1) -log(Z-B) -(A/(sqrt(8)*B))*log((Z +(1 +sqrt(2))*B)/(Z +(1 -sqrt(2))*B));
end


