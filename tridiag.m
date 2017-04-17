function A = tridiag(d,l,r)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
A=zeros(length(d));
for i=1:length(d)
    A(i,i)=d(i);
    if i~=length(A);
        A(i+1,i)=l(i+1);
        A(i,i+1)=r(i);
    end
end
end

