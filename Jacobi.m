function [x iter err] = Jacobi(A,b,x0,acc)
%Uses Jacobi iterative method to solve for a vector x
%   Detailed explanation goes here
iter = 1;
err(iter) = 1;
[n, m] = size(A);
x = zeros(n, 1);

while err(iter) > acc
    for i=1:n
        sumx = 0;
        for j=1:n
            if j ~= i
                sumx = sumx + A(i,j)*x0(j);
            end
        end
        x(i) = (b(i) - sumx)/ A(i,i);
    end
    iter = iter + 1;
    err(iter) = norm((x(i)-x0(i))/x(i), 1);
    x0 = x;
end
