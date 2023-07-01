b=[1, 0, 0];
a= [1 ,-0.4, -0.05];
Omega=-pi:2*pi/300:pi;
Hf=freqz(b,a,Omega);
subplot(2,1,1)
plot(Omega,abs(Hf));
title('midX(e^j^\omega)\mid') 
subplot(2,1,1)
plot(Omega,angle(Hf));
title('arg{X(e^j^\omega)}')