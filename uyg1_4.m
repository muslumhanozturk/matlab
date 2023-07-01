n=[0:20*pi];xl=exp(j*pi/6.*n);% zaman vektörü n ve xl oluþturun
subplot(2,1,1); stem(n,real(xl));
title('xl iþaretinin gerçel bölümü');xlabel('n')
subplot(2,1,2); stem(n,imag(xl));
title('xl iþaretinin sanal bölümü');xlabel('n')