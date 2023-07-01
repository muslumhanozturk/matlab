n=-10:10;
x=[0 0 0 0 1 2 0 -1 0 0 0];
h=[0 0 0 0 3 2 1 0 0 0];
y=conv(x,h);
stem(n,y,'filled')