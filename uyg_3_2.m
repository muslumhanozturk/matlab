conv_time = zeros(1,150); fft_time = zeros(1,150);
% 
for L = 1:150
    tc = 0; tf=0;
   N = 2*L-1; nu = ceil(log10(N)/log10(2)); N = 2^nu;
    for I=1:100
       h = randn(1,L);
       x = rand(1,L);
      t0 = clock; y1 = conv(h,x); t1=etime (clock,t0);
      tc = tc+t1;
      t0 = clock; y2 = ifft(fft(h,N), fft(x,N)); t2=etime(clock,t0); 
      tf = tf+t2;
     end
%
     conv_time(L)=tc/100;
     fft_time(L)=tf/100;
end 
%
n = 1:150; subplot(1,1,1);
plot(n(25:150),conv_time(25:150),n(25:150),fft_time(25:150)