n=-20:20;
x1=0.9.^n;
x=x1.*sin(2*pi*n/10);
stem(n,x,'filled')