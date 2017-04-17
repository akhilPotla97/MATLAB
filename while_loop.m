x = 1; %initialize x
interation_count = 0;
while x > 0
    interation_count = interation_count + 1;
    oldx = x;
    x = x / 2;
    
end

disp(x)
disp(oldx)
disp(interation_count)