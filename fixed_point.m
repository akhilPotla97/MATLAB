x=1;
error = 1;
i = 0;

while error > 0.01
    xold = x; % remember previous estimate
    x = (x+10)^(1/4); % compute new estimate
    error = abs((x-xold)/x); % compute error
    i = i+1; % count steps
end

disp(x)
disp(error)
disp(i)