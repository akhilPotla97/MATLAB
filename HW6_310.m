Q = [-9 0 3 0 0; 4 -4 0 0 0; 0 2 -9 0 0; 0 1 6 -9 2; 5 1 0 0 -6];
b = [-120; 0; -350; 0; 0];
c = Q\b;
disp(c)