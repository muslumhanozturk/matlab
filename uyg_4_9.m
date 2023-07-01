clear all; close all; % Analog isaret 
a=4*10^5; dt = 10^(-4); t_max=4*10^(-3); 
t = -t_max:dt:t_max; x=[exp(-a*t.^2)]; 
% Orneklenmis isaret, f1=1  kHz 
f1=1000; T1=(1/f1); t1=t(1:T1/dt:end); x1=[exp(-a*t1.^2)]; 
% Orneklenmis isaret, f2=0.75 kHz 
f2=750; T2=(1/f2); t2=t(1:T2/dt:end); x2=[exp(-a*t2.^2)]; 
% Surekli-Zaman Fourier Donusumu, omega: -omega_max -> omega_max 
omega_max = 2*pi*500; K = 1000; k = 0:1:K; 
omega = k*omega_max/K;  omega = [-fliplr(omega), omega(2:K+1)]; 
% Orneklenmis isaret x1, f1=1  kHz 
X1=x1 * exp(-j*t1'*omega) * dt*10; X1 = abs(X1); 
% Orneklenmis isaret x2, f2=10/14 kHz 
X2=x2 * exp(-j*t2'*omega) * dt*14; X2 = abs(X2); 
subplot(1,1,1); subplot(2,1,1); plot(t*1000,x); 
xlabel('t [msn]'); ylabel('x(n*T1)'); 
title('orneklenmis isaret, x(n*T1)')
hold on; stem(t1*1000,x1); hold off 
subplot (2,1,2); plot (omega/(2*pi*1000),X1*1000); 
xlabel('frekans [kHz]'); ylabel ('|X1(\omega)|*1000') 
title('Fourier integrali') 
figure; subplot(1,1,1) 
subplot(2,1,1);plot(t*1000,x); 
xlabel('t [msn]'); ylabel('x(n*T2)'); 
title('orneklenmis isaret, x(n*T2)') 
hold on; stem(t2*1000,x2); hold off; 
subplot(2,1,2) ;plot(omega/(2*pi*1000),X2*1000); 
xlabel('frekans [kHz]') ; ylabel('|X2(\omega)|*1000') 
title('Fourier integrali')