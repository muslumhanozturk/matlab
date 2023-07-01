%Birim Impuls Cevabý Hesaplanmasý
clear all; close all;
N=input('birim impuls cevabýnýn hesaplanacaðý uzunluk= ');
a=input('a_k katsayýlarýný girin a=');
b=input('b_k katsayýlarýný girin b=');
x=[1 zeros(1,N-1)];
y=filter(a,b,x);
k=0:N-1; stem(k,y); xlabel('zaman n');
ylabel('Genlik'); title('Birim Impuls Cevabi');