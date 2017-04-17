function s = SumSquare( x )

% function s=SumSquare(x)
% x = input array
% s = sum of squares of x, output

s = 0;
for i = 1:numel(x)
    s = s + x(i) ^ 2;

end

