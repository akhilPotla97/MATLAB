function [x, err, iter] = Jacobi_Iteration(A,b,x0,ac)
%Finding solution x to matrix equation Ax = b
%using Jacobi iterative method
[n,m] = size(A); %read size of A
iter = 1; %initiate iteration count
err(iter) = 1; %Initiate error
x = zeros(size(x0)); %initiate x
while err(iter) > ac
 %Compute sum of every element excluding A(i,i) as req. from the Jacobi
 %method
    for i = 1:n

        sum = 0;
        for j = 1:n
            if i~=j
                sum = sum + (A(i,j)*x0(j));
            end
        end
        x(i) = (b(i)-sum)/A(i,i); %Compute the value of x(i)
        iter = iter + 1; %Increase iter
        err(iter) = norm((x-x0),1)/norm((x),1); %compute error using L1 norm
    end
 x0 = x; %re-assign x0
end
end
