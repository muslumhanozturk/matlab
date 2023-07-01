 N=10;
a=[1 -5 6];
x=[1,zeros(1,N-1)]
y=filter(b,a,x);
n=0:N-1;
stem(n,y,'filled')