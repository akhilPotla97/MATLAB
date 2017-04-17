%   Akhil Potla (ap44876)
%   This calculates the epsilon value for MATLAB

epsilon = 1;

while 1 + epsilon > 1
    epsilon = epsilon / 2;
    
end

fprintf('Calculated epsilon ')
disp(2*epsilon)
fprintf('Machine epsilon ')
disp(eps)