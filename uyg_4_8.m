clear all; close all; % Analog isaret
a=4*10-5; dt = 10^(-4); t_max=4*10^(-3); t = -t_max:dt:t_max;
x=[exp(-a*t.^2)];
% Sürekli-Zaman Fourier Dönüsümü (Fourier integrali)
omega_max = 2*pi*500; K = 1000; k = 0:1:K;
% omega: -omega_max - > omega_max
omega = k*omega_max/K; omega = [-fliplr(omega), omega(2:K+1)];
X=x * exp(-j*t'*omega) * dt; X = abs(X);
subplot(1,1,1)
subplot(2,1,1);plot(t*1000,x);
xlabel('t [sn]'); ylabel('x(t)'); title('Analog isaret')
subplot (2,1,2);plot(omega/(2*pi*1000),X*1000) ;
xlabel('frekans [kHz] '); ylabel(' IX(\omega) l*1000')
title(' Four ier integrali')