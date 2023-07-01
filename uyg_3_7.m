n =-2:10;
y=zeros(size(n));
y(1)=0; y(2)=0;
   for m=3:double(n);
   y(m)=5*y(m-1)-6*y(m-2);
end
stem(n,y,'filled') 
