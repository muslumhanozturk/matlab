clear all; close all;
a=4*10^5; dt = 10^(-4); t_max=4*10^(-3);
t = -t_max:dt:t_max;
% Orneklenmis isaret, f1=1 kHz
f1=1000; T1=(1/f1);
t1=t(1:T1/dt:end); x1=[exp(-a*t1.^2)];
% analog isaretin yeniden elde edilmesi
x_a1 = x1*sin(f1*(ones(length(t1),1)*t-t1'*ones(1,length(t))));
plot(t*1000,x_a1);
xlabel('t [msn]'); ylabel('x1(t)');
title('x1(n) örneklerinden sinc fonksiyonu ile elde edilen analog iþaret')
hold on; stem(t1*1000,x1); hold off
% Orneklenmis isaret, f2=0.5 kHz
f2=500; T2=(1/f2);
t2=t(1:T2/dt:end); x2=[exp(-a*t2.^2)];
% analog isaretin yeniden elde edilmesi
x_a2 = x2*sin(f2*(ones(length(t2),1)*t-t2'*ones(1,length(t))));
figure; plot(t*1000,x_a2);
xlabel('t [msn]'); ylabel('x2(t)');
title('x2(n) örneklerinden sinc fonksiyonu ile elde edilen analog isaret')
hold on; stem(t2*1000,x2); hold off