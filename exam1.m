x = [3 7 -1 4];
for i=1:4
    jmax=1;
    max=x(jmax);
    for j=2:4
        if x(j)>max
            max=x(j);
            jmax=j;
        end
    end
    x(jmax)=-100;
    y(i) = max;
end
disp(x)
disp(y)