function [ x,y ] = HuenMethod( h,x1,y1,xn)
 
n= (xn-x1)/h+1
x = zeros(1,n)
y = zeros(1,n)
x(1)=x1
y(1)=y1
step=1
for i=x1:h:xn
    f = 8*y(step).*i.^3+y(step);
    f2 = 8*y(step).*(i+h).^3+y(step);
    y(step) = y(step)+(f+f2)*.5*h
    
    true = -.5*i.^4+4*i.^3-10*i.^2+8.5*i+1
    x(step) = i
    y(step) = y1
    error = true-y(step)
    step=step+1
end