x = [4 -2 1 -5 -2 9 1 2 -2 2];
A = [2 1 3; -1 2 1; -3 5 7];
B = [-2 7 9; 1 5 6; 3 9 10];

sum = 0;
for i=1:3
    for j=1:2
        sum = sum + A(3,i) * A(j,1) * B(j,i);
    end
end
disp(sum)