v = linspace(0, 10^-3);
figure
% MATLAB automatically changes the colors for each plot
semilogy(v, P_VDW(475, v, 1.4662, 0.0001226))
hold on
semilogy(v, P_VDW(450, v, 1.4662, 0.0001226))
semilogy(v, P_VDW(425, v, 1.4662, 0.0001226))
semilogy(v, P_VDW(400, v, 1.4662, 0.0001226))
axis([0 10^-3 0 10^8])
title('Pressure vs Molecular Volume Semilog Van der Waals')
xlabel('Molecular Volume')
ylabel('Pressure')
legend('475 K','450 K','425 K','400 K')

figure
% MATLAB automatically changes the colors for each plot
plot(v, P_VDW(475, v, 1.4662, 0.0001226))
hold on
plot(v, P_VDW(450, v, 1.4662, 0.0001226))
plot(v, P_VDW(425, v, 1.4662, 0.0001226))
plot(v, P_VDW(400, v, 1.4662, 0.0001226))
axis([.00015 10^-3 0 10^7])
title('Pressure vs Molecular Volume Linear Van der Waals')
xlabel('Molecular Volume')
ylabel('Pressure')
legend('475 K','450 K','425 K','400 K')
