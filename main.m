figure % Figure for the values of f and its dertivatives
x = 1:5;
[fx, fxder] = f(x);
plot(x, fx, '-x')
hold on
plot(x, fxder, '-o')
axis([1 5 -20 100]) % setting axis
grid on
title('Value of f(x) and derivative of f(x) vs x values')
xlabel('X axis')
ylabel('Y axis')
legend('f(x)','Derivative of f(x)')

% Ask user to guess a value that is relatively close to the root
x0 = input('Enter your guess for the root: ');
x1 = x0;
[fx1, fxder1] = f(x1);
xValues1(1) = x0;
approxErrors1 = [];
approxError1 = 100;
iter1 = 1;
while approxError1 > 1
    xValues1(iter1) = x1;
    x1 = x1 - fx1/fxder1;
    [fx1, fxder1] = f(x1);
    approxError1 = abs(1.9227 - x1) / 1.9227 * 100;
    approxErrors1(iter1) = approxError1;
    iter1 = iter1 + 1;
end
xValues1(iter1) = x1;
approxErrors1(iter1) = approxError1;
disp(x1)

% Use previous guess and new guess for the approimation for secent method
x2 = x0;
x3 = input('Enter in another guess for the root: ');
[fx2, fxder2] = f(x2);
[fx3, fxder3] = f(x3);
xValues2(1) = x2;
approxErrors2 = [];
approxError2 = 100;
iter2 = 1;
while approxError2 > 1
    xValues2(iter2) = x2;
    x4 = x2 - (fx2 * (x3 - x2))/(fx3 - fx2);
    x3 = x2;
    x2 = x4;
    [fx2, fxder2] = f(x2);
    [fx3, fxder3] = f(x3);
    approxError2 = abs(1.9227 - x2) / 1.9227 * 100;
    approxErrors2(iter2) = approxError2;
    iter2 = iter2 + 1;
end
xValues2(iter2) = x2;
approxErrors2(iter2) = approxError2;
disp(x2)

figure
plot(xValues1, approxErrors1, '-x')
hold on
plot(xValues2, approxErrors2, '-o')
title('Approximate Errors verus x-values')
xlabel('X values')
ylabel('Percentage Error')
legend('Newton-Raphson Approximate Error','Secant Approximate Error')
figure
axis1 = 1:iter1;
plot(axis1, approxErrors1, '-x')
hold on
axis2 = 1:iter2 ;
plot(axis2, approxErrors2, '-o')
title('Approximate Errors verus number of Iterations')
xlabel('Iterations')
ylabel('Percentage Error')
legend('Newton-Raphson Approximate Error','Secant Approximate Error')
