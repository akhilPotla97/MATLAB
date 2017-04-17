function T = Sine( x )
%   function T = Sine( x )
%   Shows the sin approximation for the first through fifth order
%   approximation
%   Input x - is the value that for which a sin value is computed
%   Output T - is table will all the relavent information displayed

x1 = x; % value of first order
x2 = 0; % value of second order, currently place holder
x3 = 0; % value of third order, currently place holder
x4 = 0; % value of fourth order, currently place holder
x5 = 0; % value of fifth order, currently place holder


error1 = (sin(x)-x1)/sin(x) * 100; % error for first order approximation

%   Logic in the loops: use while loop that is going to interate through
%   the same number of elements is the order degree.
%   If the interation is even numbered add
%   If the interation is odd numbered subtract

i = 0;
while i < 2
    if mod(i, 2) == 0
        x2 = x2 + x ^ (i * 2 + 1) / factorial(i * 2 + 1);
    else
        x2 = x2 - x ^ (i * 2 + 1) / factorial(i * 2 + 1);
    end
    i = i + 1;
end

error2 = (sin(x)-x2)/sin(x) * 100; % error for second order approximation

i = 0;
while i < 3
    if mod(i, 2) == 0
        x3 = x3 + x ^ (i * 2 + 1) / factorial(i * 2 + 1);
    else
        x3 = x3 - x ^ (i * 2 + 1) / factorial(i * 2 + 1);
    end
    i = i + 1;
end

error3 = (sin(x)-x3)/sin(x) * 100; % error for third order approximation


i = 0;
while i < 4
    if mod(i, 2) == 0
        x4 = x4 + x ^ (i * 2 + 1) / factorial(i * 2 + 1);
    else
        x4 = x4 - x ^ (i * 2 + 1) / factorial(i * 2 + 1);
    end
    i = i + 1;
end

error4 = (sin(x)-x4)/sin(x) * 100; % error for fourth order approximation


i = 0;
while i < 5
    if mod(i, 2) == 0
        x5 = x5 + x ^ (i * 2 + 1) / factorial(i * 2 + 1);
    else
        x5 = x5 - x ^ (i * 2 + 1) / factorial(i * 2 + 1);
    end
    i = i + 1;
end

error5 = (sin(x)-x5)/sin(x) * 100; % error for fifth order approximation

sinResults = [x1; x2; x3; x4; x5];
sinValue = [sin(x); sin(x); sin(x); sin(x); sin(x)];
error = [error1; error2; error3; error4; error5];

T = table(sinResults, sinValue, error); % table with the data

disp(T)

end

