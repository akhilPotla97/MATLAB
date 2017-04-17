% Discussion Question 2

% Part A

clear 

i = [.5, .5, 0]; % Concentration of Various Components in the initial reservoir
a = [0, 0, 1]; % Solvent A
final = [0, 0, 0];
iter = 0; % Number of Iterations, Units of Solvent A per unit of volume of the initial reservoir

while final(1) ~= 0.12 || final(2) ~= 0.14 || final(3) ~= 0.74  % Point on 2 phase line corresponding to exiting the 2 phase region by addition of solvent A
    if iter > 100000
        break;
    end
    
    if final(3) > 0.74 % Use bisection method if 0.74 is over shot
        xL = iter - 1;
        xU = iter;
        while final(3) ~= 0.74
            xR = (xU - xL)/2 + xL;
            final = i + a * xR;
            final = final / (xR + 1);
            finalL = i + a * xL;
            finalL = finalL / (xL + 1);
            finalU = i + a * xU;
            finalU = finalU / (xU + 1);
            if finalL(3) < 0.74
                xL = xR;
            else
                xU = xR;
            end
            if abs(xU-xL) < .00000001
                break;
            end
        end
        iter = xR;
        break;
    end
    final = i + a * iter;
    final = final / (iter + 1);
    iter = iter + .1;
end

disp(iter);
disp(final);

% Part B

clear

i = [.5, .5, 0]; % Concentration of Various Components in the initial reservoir
b = [.5, 0, .5]; % Solvent B
final = [0, 0, 0];
iter = 0; % Number of Iterations, Units of Solvent A per unit of volume of the initial reservoir

while final(1) ~= 0.5 || final(2) ~= 0.02 || final(3) ~= 0.48 % Point on 2 phase line corresponding to exiting the 2 phase region by addition of solvent B
    if iter > 100000
        break;
    end
    final = i + b * iter;
    final = final / (iter + 1);
    iter = iter + 1;
end

disp(iter);
disp(final);

% Part C

clear

i = [.5, .5, 0]; % Concentration of Various Components in the initial reservoir
c = [0, .5, .5]; % Solvent B
final = [0, 0, 0];
iter = 0; % Number of Iterations, Units of Solvent A per unit of volume of the initial reservoir

while final(1) ~= 0.02 || final(2) ~= 0.5 || final(3) ~= 0.48 % Point on 2 phase line corresponding to exiting the 2 phase region by addition of solvent C
    if iter > 100000
        break;
    end
    final = i + c * iter;
    final = final / (iter + 1);
    iter = iter + 1;
end

disp(iter);
disp(final);