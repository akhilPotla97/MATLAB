function Z = PR_Z(A,B)
%PR_Z outputs sorted real roots of cubic Peng Robinson EOS

coeff(1) = 1;
coeff(2) = -(1-B);
coeff(3) = A - 3*B^2 - 2*B;
coeff(4) = -(A*B - B^2 - B^3);

Z = cubic_roots(coeff);

end

