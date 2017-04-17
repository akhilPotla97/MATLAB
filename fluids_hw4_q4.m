T = 70:10:200;

propane = [124.92 144.05 165.25 188.65 214.38 242.60 273.46 307.11 343.74 383.55 426.76 473.65 524.57 580.04];
butane = [31.212 37.152 43.913 51.567 60.185 69.841 80.610 92.568 105.80 120.37 136.39 153.92 173.06 193.91];
pentane = [8.5611 10.541 12.866 15.575 18.711 22.316 26.436 31.117 36.407 42.357 49.017 56.440 64.680 73.792];

plot(T, propane, 'o-')
hold on
plot(T, butane, '*-')
plot(T, pentane, 'x-')
axis([70 200 0 400])
xlabel('Temperature (F)');
ylabel('Pressure (psia)');
legend('Propane', 'Butane', 'Pentane');
title('Temperature (F) vs Pressure (psia)');