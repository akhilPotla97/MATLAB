function xR = FalsePosition( xL, xU )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
c = [xL, xU];
f = 667.38./c .*(1 - exp(-0.146843*c))-40;

while f(1) * f(2) < 0
    xR = (c(1) + c(2))/2;
    f1 = 667.38/xR *(1 - exp(-0.146843*xR))-40;
    if f(2)*f1 < 0
        xL = xR;
        c = [xL, xU];
    elseif f(1) * f1 < 0
        xU = xR;
        c = [xL, xU];
    end
    f = 667.38./c .*(1 - exp(-0.146843*c))-40;
    
    if abs(xU-xL) < .0000001
        break;
    end
end

disp(xR)

end

