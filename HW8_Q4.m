% Problem 4:
x=linspace(0,2);
y=exp(2*x.^4-x);
[x1 y1]=EulerMethod(0.5,0,1,2);
[x2 y2]=EulerMethod(0.25,0,1,2);
[x3 y3]=HeunMethod(0.5,0,1,2);
[x4 y4]=Runge(0.5,0,1,2);
semilogy(x,y,'b^')
hold on
semilogy(x1,y1,x2,y2,x3,y3,x4,y4)
legend('analytical','euler .5', 'euler .25', 'heun', 'runge')

%  
% function [ x,y ] = EulerMethod( h,x1,y1,xn)
%  
% n= (xn-x1)/h
% x = zeros(1,n)
% y = zeros(1,n)
% x(1)=x1
% y(1)=y1
% step=1
% for i=x1:h:xn
%     f = -2*i.^3+12*i.^2-20*i+8.5
%     y2 = y1+f*h
%     true = -.5*i.^4+4*i.^3-10*i.^2+8.5*i+1
%     x(step) = i
%     y(step) = y1
%     error = true-y2
%     step=step+1
%     y1=y2
%     
%  
% end
% end
% 
% 
% [ x,y ] = HuenMethod( h,x1,y1,xn)
%  
% n= (xn-x1)/h
% x = zeros(1,n)
% y = zeros(1,n)
% x(1)=x1
% y(1)=y1
% step=1
% for i=x1:h:xn
%     f = -2*i.^3+12*i.^2-20*i+8.5
%     f2 = -2*(i+h).^3+12*(i+h).^2-20*(i+h)+8.5
%     y2 = y1+(f+f2)*.5*h
%     
%     true = -.5*i.^4+4*i.^3-10*i.^2+8.5*i+1
%     x(step) = i
%     y(step) = y1
%     error = true-y2
%     step=step+1
%     y1=y2
%     
%  
% end
% 
% 
% [x y] = Runge(h,x1,y1,xn)
% %Runge.m takes inputs of the interval, stepsize, and first y value
% %and outputs the x and y vectors
%  
% x=x1:h:xn;
% n=length(x);
% y=zeros(1,n);
% y(1)=y1;
% stepnum=1;
%  
% for i=1:n
%     k1=(8*y1*x(i).^3)-y1;
%     k2=(8*(y1+.5*k1*h)*((x(i)+.5*h).^3))-(y1+.5*k1*h);
%     k3=(8*(y1+.5*k2*h)*((x(i)+.5*h).^3))-(y1+.5*k2*h);
%     k4=(8*(y1+k3*h)*((x(i)+h).^3))-(y1+k3*h);
%     
%     y2=y1+(1/6)*(k1+2*k2+2*k3+k4)*h;
%     x(stepnum)=x(i);
%     y(stepnum)=y1;
%     y1=y2;
%     stepnum=stepnum+1;
% end