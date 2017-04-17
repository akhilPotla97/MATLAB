b=zeros(121,1);
b(1)=60; %temperature of the corner
b(11)=60; %temperature of the corner
b(111)=60; %temperature of the corner
b(121)=60; %temperature of the corner
b(70)=15; %temperature of the center
 
A=zeros(121,121); %temperature field
A(1,1)=1; %corner
A(11,11)=1; %corner
A(111,111)=1; %corner
A(121,121)=1; %corner

%Upper Boundary
%Plug in coefficients for the upper boundary function
row=12;
for j=11:11:99
    A(row,j)=1/10000;
    A(row,j+11)=-4/10000;
    A(row,j+22)=1/10000;
    A(row,j+10)=2/10000;
    row = row+1;
end

%Lower Boundary
%Plug in coefficients for the lower boundary function
row=21;
for j=1:11:89
    A(row,j)=1/10000;
    A(row,j+11)=-4/10000;
    A(row,j+22)=1/10000;
    A(row,j+12)=2/10000;
    row = row+1;
end

%Left Boundary
%Plug in coefficients for the left boundary function
row=2;
for j=1:9
    A(row,j)=1/10000;
    A(row,j+1)=-4/10000;
    A(row,j+2)=1/10000;
    A(row,j+12)=2/10000;
    row = row+1;
end

%Right Boundary
%Plug in coefficients for the right boundary function
row=112;
for j=111:119
    A(row,j)=1/10000;
    A(row,j+1)=-4/10000;
    A(row,j+2)=1/10000;
    A(row,j-10)=2/10000;
    row = row+1;
end

%Inside Boundary
%Plug in coefficients for the inside boundary function
row=30;
for i=0:8
    for j = 1:9
        if i==4 && j==5
            A(row,:) = 0;
            row = row+1;
        else 
            A(row,(j+1)+11*i)=1/10000;
            A(row,(j+11)+11*i)=1/10000;
            A(row,(j+12)+11*i)=-4/10000;
            A(row,(j+13)+11*i)=1/10000;
            A(row,(j+23)+11*i)=1/10000;
            row = row+1;
        end
    end
end

A(70,61)=1; %center

[n,m]=size(A);
x=A\b;

x=reshape(x,11,11);
contourf(x)