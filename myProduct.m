function [ prod ] = myProduct( x )
%  function [ prod ] = myProduct( x )
%  x = input array
%  prod = output product of elements x(i)*i
%  Function computes product i*x(i) until it reaches 10000

n = numel(x);

% prod = 1;
% for i=1:n
%     pi = i*x(i);
%     prod = prod*pi;
%     
%     if prod > 10000
%         break
%     end
% end

prod = 1;
i = 1;
while prod <= 10000 && i <= n
    prod = prod*i*x(i);
    i=i+1;
end

end
