% Question 1

% Part A
figure

temp = 70:20:370;
p = [8.5611, 12.866, 18.711, 26.437, 36.407, 49.017, 64.680, 83.832, 106.94, 134.48, 166.98, 205.00, 249.19, 300.27, 359.17, 427.16, 488.78];
temp_F = [temp 385.8];

plot(temp_F, p);
title('Pressure(psia) vs Temperature(F)');
xlabel('Temperature(F)');
ylabel('Pressure(psia)');


figure

temp_R = temp_F + 459.67;

semilogy(temp_R, p);
title('Pressure(psia) vs Temperature(R)');
xlabel('Temperature(R)');
ylabel('Pressure(psia)');


% Part B
figure

sVol_Vapor = [8.9239, 6.0982, 4.2909, 3.0963, 2.2831, 1.7148, 1.3082, 1.0110, 0.78949, 0.62129, 0.49135, 0.38922, 0.30746, 0.24057, 0.18408, 0.13294];

semilogy(temp, sVol_Vapor);
title('Specific Volume of Vapor(ft3/lbm) vs Temperature(F)');
xlabel('Specific Volume of Vapor(ft3/lbm)');
ylabel('Temperature(F)');


figure

sVol_Liquid = [0.025646, 0.026106, 0.026597, 0.027123, 0.027690, 0.028306, 0.028981, 0.029727, 0.030562, 0.031510, 0.032606, 0.033905, 0.035496, 0.037544, 0.040408, 0.045252];

plot(temp, sVol_Liquid);
title('Specific Volume of Liquid(ft3/lbm) vs Temperature(F)');
xlabel('Specific Volume of Liquid(ft3/lbm)');
ylabel('Temperature(F)');


% Part C
figure

sEnthalpy_Vap = [0.41106, 0.42033, 0.42998, 0.43997, 0.45023, 0.46073, 0.47144, 0.48233, 0.49340, 0.50467, 0.51618, 0.52803, 0.54042, 0.55377, 0.56906, 0.58953];
rankine = temp + 459.67;
sEnthalpy_Vap = sEnthalpy_Vap .* rankine;

plot(temp, sEnthalpy_Vap);
title('Specific Enthalpy of Vaporization(ft3/lbm) vs Temperature(F)');
xlabel('Specific Volume of Liquid(ft3/lbm)');
ylabel('Temperature(F)');