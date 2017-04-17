function [x err iter] = Successive_relaxation(A,b,x0,acc,relax_factor)
%Uses successive relaxation iterative method to solve for a vector x
[n,m] = size(A);
iter = 1;
err(iter) = 1;
x = zeros(size(x0));
while err(iter) > acc
    iter = iter + 1;
    for i = 1:n
        sum = 0;
        for j = 1:n
            if i~=j
                sum = sum + (A(i,j)*x0(j));
            end
        end
        x(i) = (b(i)-sum)/A(i,i);
        err(iter) = norm((x-x0),1)/norm((x),1);
        x0(i) = (relax_factor * x(i)) + ((1 - relax_factor) * x0(i));
    end
    x0 = x;
end
end