
b=[1,0];
a=[1,-0.9];
zplane(b,a);
[H,w] = freqz(b,a,100);
magH = abs(H);
phaH = angle(H);
subplot(2,1,1); 
plot(w/pi,magH); 
grid
xlabel('frequency in pi units');
ylabel('Magnitude');
title('Magnitude Response')
subplot(2,1,2); 
plot(w/pi,phaH/pi);
grid
xlabel('frequency in pi units');
ylabel('Phase in pi units');
title('Phase Response')