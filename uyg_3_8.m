%Birim Impuls Cevabı Hesaplanması
clear all; close all;
N=input('birim impuls cevabının hesaplanacağı uzunluk= ');
a=input('a_k katsayılarını girin a=');
b=input('b_k katsayılarını girin b=');
x=[1 zeros(1,N-1)];
y=filter(a,b,x);
k=0:N-1; stem(k,y); xlabel('zaman n');
ylabel('Genlik'); title('Birim Impuls Cevabi');