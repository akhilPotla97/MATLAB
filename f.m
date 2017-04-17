function [fx, fxder] = f( x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n = numel(x);
fx = zeros(n,1);
fxder = zeros(n,1);
for i = 1:n
    fx(i) = x(i)^3 - 5/x(i)^2 - 4*sin(x(i)) - 2;
    fxder(i) = 3*x(i)^2 + 10/x(i)^3 - 4*cos(x(i));
end
