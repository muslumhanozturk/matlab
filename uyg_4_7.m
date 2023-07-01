clear all; close all;
% Analog lþaret
a=1500;
dt = 0.00005; t_max=0.005;
t = -t_max:dt:t_max;
x= [zeros( 1, t_max/dt) exp(-a+t(t_max/dt+1:end))];
% Sürekli-Zaman Fourier Dönüþümü (Fourier integrali)
omega_max = 2*pi*2000;
K = 500; k = 0:1:K;
% omega: -omega_max -> omega_max
omega = k*omega_max/K;
omega= [-fliplr(omega), omega(2:K+1)];
X = x * exp(-j*t'*omega) * dt;
X = abs(X);
subplot(1,1,1);
subplot (2,1,1) ; plot ( t*1000, x) ;
xlabel('t [msn]'); ylabel('x(t)');
title('Analog isaret');
subplot(2,1,2); plot(omega/(2*pi*1000),X*a);
xlabel (' frekans [kHz] '); ylabel (' | X (\omega)| *a') ;
title('Fourier integrali');