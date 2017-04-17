function x = SolveLinearSystem(A,b)
% Akhil Potla (ap44876)
% function x = SolveLinearSystem(A,b)
% returns a vector solution of the linear system Ax=b

% Assignment:
% For matrix A and vector b provided as an input, solve Ax=b
% with Gaussian elimination without pivoting.
% Some initial checks on matrix sizes are already provided.
% Use forward elimination and then back substitution, similar
% to solving by hand.
%
% Use the following A and b to check your solution:
% A=[3 2 -1; 6 -6 7; 3 -4  4];
% b = [-1; -7; -6];

% Initial checks
% check that the matrix is a square matrix
if (size(A,1) ~= size(A,2))
    disp('Please provide a square matrix A');
    x = [];  % set x to be an empty vector
    return   % exit the function
end

if (size(A,1) ~= size(b,1))
    disp('Please provide A and b of matching sizes');
    x = []; % set x to be trivial
    return
end

%% Forward elimination: you can work on matrix A, b simultaneously,
% without creating that augmented matrix (and wasting extra computer memory)

n = size(A,1); %number of rows in A

for i=1:n
    if A(i,i) == 0
        disp('Pivot position is 0!')
        return % exit the function - presently we do not deal with partial pivoting
    end
    % work on all rows below row i and make sure that A(j,i) becomes 0
    for j=(i+1):n
        % HELP:
        % replace row j with [(row j) - coefficient * (row i)]
        % you need to find the appropriate coefficient
        %
        coefficient = A(j,i) / A(i,i);
        % Note:
        % - change matrix A in place - no need to create a different
        %   matrix
        % - do not forget to do similar operation on b(j)
        A(j,:) = A(j,:) - coefficient.*A(i,:);
        b(j) = b(j) - coefficient.*b(i);
    end
end

%% Backward substitution

x = zeros(size(b));    %initialize vector x (good programming practice)
x(n)   = b(n)/A(n,n);  % the last element of x is solved easily
% now we need to work from element (n-1) back to 1
% HELP: In a 3 by 3 system, we would have
%
% x(3) = b(3)/A(3,3)
% x(2) = [ b(2) - A(2,3)*x(3) ] / A(2,2);
% x(1) = [ b(1) - A(1,2)*x(2) - A(1,3)*x(3) ] / A(1,1);
%
% Do you see a pattern you can program in a nested loop?

for i=n-1:-1:1
    tempSum = b(i);
    for j = i:n-1  
        tempSum = tempSum - A(i,j+1)*x(j+1);
    end
    x(i) = tempSum/A(i,i);
end

end