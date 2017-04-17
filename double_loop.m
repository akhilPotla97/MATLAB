A = [ 1 2 3 ; 4 5 6];

[N,M] = size(A);

for i=1:N
   fprintf('\ni=%d\n', i); %print current index
   for j=1:M
      fprintf('j=%d ', j);
      B(i,j) = 2*A(i,j) + 1;
   end
    
    
end