% Akhil Potla
% ap44876

delta = 1; 

while true
    value = 1;
    value = value + delta;
    if value == 1
        break;
    else
        delta = delta / 2 ;
    end
end

fprintf('The machine precision is ')
disp(delta)