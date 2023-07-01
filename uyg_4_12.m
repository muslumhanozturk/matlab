clear all;close all;
R=101;
g=(rand(R,1)-0.5); %gürültü
m=0:R-1;
x=2+sin(0.2*m); %bilgi iþareti
b=x+g'; %gürültülü iþaret
subplot(2,1,1);
plot(m,g','r-',m,x,'g-',m,b,'b-') 
xlabel('zaman n');ylabel('isaret genligi');
legend('g[n]','x[n]','b[n]');
y(1)=(g(1)+g(2))/3;
for n=2:1:100;
y(n)=(b(n-1)+b(n)+b(n+1))/3;
end
y(101)=(g(100)+g(101))/3;
subplot(2,1,2);
plot(m,y,'r-',m,x,'g-');
legend('y[n]', 'x[n]');
xlabel('zaman n'); ylabel('isaret genligi');