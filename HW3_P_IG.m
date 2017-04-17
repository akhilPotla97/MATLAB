v = linspace(0, 10^-3);
figure
% MATLAB automatically changes the colors for each plot
semilogy(v, P_IG(475, v))
hold on
semilogy(v, P_IG(450, v))
semilogy(v, P_IG(425, v))
semilogy(v, P_IG(400, v))
axis([0 10^-3 0 10^8])
title('Pressure vs Molecular Volume Semilog Ideal Gas')
xlabel('Molecular Volume')
ylabel('Pressure')
legend('475 K','450 K','425 K','400 K')

figure
% MATLAB automatically changes the colors for each plot
plot(v, P_IG(475, v))
hold on
plot(v, P_IG(450, v))
plot(v, P_IG(425, v))
plot(v, P_IG(400, v))
axis([0 10^-3 0 10^7])
title('Pressure vs Molecular Volume Linear Ideal Gas')
xlabel('Molecular Volume')
ylabel('Pressure')
legend('475 K','450 K','425 K','400 K')
