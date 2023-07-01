clear all; close all;
P=1; J_max=100;
Delta=P/(50*J_max);
k=[1:100];
b(1)=2/5;
b(2:101)=2*2*sin(k*2*pi/5)./(k*2*pi);
t=[-P/2:Delta:P/2];
x_j(1,:)=b(1)*cos(t*0*2*pi/P);
for j=2:101
    x_j(j,:)=x_j(j-1,:)+b(j)*cos(t*(j-1)*2*pi/P);
end
subplot(2,3,1), plot(t,x_j(2,:))
subplot(2,3,2), plot(t,x_j(6,:))
subplot(2,3,3), plot(t,x_j(11,:))
subplot(2,3,4), plot(t,x_j(26,:))
subplot(2,3,5), plot(t,x_j(51,:))
subplot(2,3,6), plot(t,x_j(101,:))