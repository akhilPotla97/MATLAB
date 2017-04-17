% Question 2

pVap_butane = 31.212;
pVap_pentane = 8.5611;
x1 = 0:0.05:1;
p_x = x1.*pVap_butane + (1-x1).*pVap_pentane;
y1 = x1.*pVap_butane./p_x;
p_y = 1./(y1./pVap_butane + (1-y1)./pVap_pentane);
figure
plot(x1, p_x, y1, p_y, '--');
title('Pressure(psia) vs Mole Fraction');
xlabel('Mole Fraction');
ylabel('Pressure(psia)');
legend('x1', 'y1');