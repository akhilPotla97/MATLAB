function [x,iter, err]=JacobiIteration(A,b,x0,ac)
[n,m]=size(A);
MAX = 10000;
if nargin < 3
    x0 = zeros(n,1);
    ac = 1e-6;
end
iter = 1;
error=1;
err(iter) = error;
x = zeros(size(x0));
while error > ac && iter < MAX
    %   for iter=1:MAX...and then break when error < tol
    for i=1:n
        sumx = 0;
        for j=1:n
            if i~=j
                sumx = sumx +A(i,j)*x0(j);
            end
        end
        x(i) = (b(i)-sumx)/A(i,i);
    end
    iter = iter +1;
    error = norm(x-x0)/norm(x);
    err(iter) = error;
    x0=x;
end