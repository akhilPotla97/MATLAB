% Akhil Potla (ap44876)

x=[2.5, 3.5, 5, 6, 7.5, 10, 12.5, 15, 17.5, 20];
y=[7, 5.5, 4.1, 3.9, 3.4, 3.9, 2.6, 2.4, 2.3, 2.1];

plot(x,y, 'o')
hold on
[a0, a1, r2] = LinearRegression(x,y);

plot(x, a0+a1*x)
set(gca, 'fontsize', 18)
X = log(x);
Y = log(y);
[A0,A1,R2] = LinearRegression(X,Y);

a2=exp(A0)

b2=A1;
hold on
plot(x, a2*x.^b2)