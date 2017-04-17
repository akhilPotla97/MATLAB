function [ a0, a1, r2 ] = LinearRegression( x,y )
% function [ a0, a1, r2 ] = LinearRegression( x,y )
%
% Computes a0, a1 of the linear fit y(x) = a0 + a1*x to the data x, y (vectors)
% provided 

n= length(x);

%if only for loops are allowed, we compute sums this way
sumx = 0; 
sumy = 0; 
sumxy = 0; 
sumx2 = 0;
sumy2 = 0;

for i=1:n 
    sumx = sumx + x(i); 
    sumy = sumy + y(i); 
    sumxy = sumxy + x(i)*y(i);  
    sumx2 = sumx2 + x(i)^2; 
    sumy2 = sumy2 + y(i)^2; 
end

sumx
sumy
sumxy
sumx2


% if vectorization and 'sum' function are allowed, we compute this way
%sumx2 = sum(x.*x);
%sumx = sum(x);
%sumy = sum(y);
%sumxy = sum(x.*y);
%sumy2 = sum(y.*y);


%compute a0, a1 as well as r
a0 = (sumx*sumxy - sumx2*sumy)/( sumx^2 - n*sumx2);
a1 = (n*sumxy - sumx*sumy)/(n*sumx2 - sumx^2);

%compute coefficient r and r^2
r = (n*sumxy - sumx*sumy) / ( sqrt(n*sumx2 - sumx^2) * sqrt(n*sumy2 - sumy^2));
r2 = r^2;

end

