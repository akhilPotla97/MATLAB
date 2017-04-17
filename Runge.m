function [x y] = Runge(h,x1,y1,xn)
x=x1:h:xn;
n=length(x);
y=zeros(1,n);
y(1)=y1;
stepnum=1;
 
for i=1:n
    k1=(8*y1*x(i).^3)-y1;
    k2=(8*(y1+.5*k1*h)*((x(i)+.5*h).^3))-(y1+.5*k1*h);
    k3=(8*(y1+.5*k2*h)*((x(i)+.5*h).^3))-(y1+.5*k2*h);
    k4=(8*(y1+k3*h)*((x(i)+h).^3))-(y1+k3*h);
    
    y2=y1+(1/6)*(k1+2*k2+2*k3+k4)*h;
    x(stepnum)=x(i);
    y(stepnum)=y1;
    y1=y2;
    stepnum=stepnum+1;
end