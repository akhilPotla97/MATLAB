% Question 1
P1vapb = [31.212, 43.913];
P1vapp = [8.5611, 12.866];
LvRB = log(31.212/43.913)/(1/529.67 - 1/549.67);
LvRP = log(8.5611/12.866)/(1/529.67 - 1/549.67);
T_range = [(1/529.67 + (log(20/31.212)/LvRB))^-1, (1/529.67 + (log(20/8.5611)/LvRP))^-1];

T = T_range(1):5:T_range(2);
T = [T T_range(2)];

P2vapb = 31.212./exp(LvRB*(1/529.67 - 1./T));
P2vapp = 8.5611./exp(LvRP*(1/529.67 - 1./T));
x1 = (20 - P2vapp)./(P2vapb - P2vapp);
y1 = x1.*P2vapb/20;

T = T - 459.67;

plot(x1, T, 'o-');
hold on
plot(y1, T, 'o--');
title('Mole Fraction Vs Temperature')
xlabel('Mole Fraction')
ylabel('Temperature (F)')
legend('x1', 'y1')