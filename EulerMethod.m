function [x, y] = EulerMethod(x1, xn, y1, h)
%Solves the function dy/dx = -2x^3 + 12x^2 - 20x + 8.5
x = zeros((xn-x1)/h + 1,1);
[n,m] = size(x);
y = zeros([n,m]);

for i=1:n
    if i > 1
        x(i) = x(i-1) + h;
        y(i) = y(i-1) + (8*y(i-1)*x(i)^3-y(i-1))*h; 
    else
        y(i) = y1;
        x(i) = x1;
    end
end
end