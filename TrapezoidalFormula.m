function [ I ] = TrapezoidalFormula(n,a,b)
% function [ I ] = TrapezoidalFormula(n,a,b)
% n = number of subintervals
% a,b = interval endpoints (where to integrate)

% I = integral over [a,b] of parabolic function
h = (b-a)/n; %spacing

x = a:h:b;
m=numel(x); 
I = f(x(1));

for i=2:(m-1)
    I=I+2*f(x(1));
end
I=I+f(x(m));
I=(h/2)*I;

% analytical solution
I_a=analytical_integral(a,b)

fprintf('numerical %2.4f analytical %2.4f',I,I_a)
fprintf('\nerror: %g%', 100*abs(I-I_a)/abs(I_a))
end

function y=f(x)

    y=4*x^2-3*x*x+10;
    
end

function I = analytical_integral(a,b)
    I = 4/3*(b^3-a^3)-3/2*(b^2-a^2)+10*(b-a);
end