%   The data from the PDF
data = [.036, .0001, 10, 2; .020, .0002, 8, 1; .015, .0012, 20, 1.5; .030, .0007, 25, 3; .022, .0003, 15, 2.6];

r = length(data); % length of the data table
velocity = zeros(r, 1); % creates array of zeros to be filled in with velocity values
for i=1:r
    n = data(i, 1); % value of n in data table
    S = data(i, 2); % value of S in data table
    B = data(i, 3); % value of B in data table
    H = data(i, 4); % value of H in data table
    v = sqrt(S)/n*((B*H)/(B+2*H))^(2/3); % velocity for each row
    velocity(i) = v; % adds the velocity to the velocity vector
end

data =  [data velocity]; % appends the velocity to the data table
T = array2table(data, 'VariableNames', {'n', 'S', 'B', 'H', 'U'}); % creates a table
disp(T) % displays table