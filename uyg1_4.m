n=[0:20*pi];xl=exp(j*pi/6.*n);% zaman vekt�r� n ve xl olu�turun
subplot(2,1,1); stem(n,real(xl));
title('xl i�aretinin ger�el b�l�m�');xlabel('n')
subplot(2,1,2); stem(n,imag(xl));
title('xl i�aretinin sanal b�l�m�');xlabel('n')