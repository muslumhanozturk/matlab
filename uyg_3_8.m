%Birim Impuls Cevab� Hesaplanmas�
clear all; close all;
N=input('birim impuls cevab�n�n hesaplanaca�� uzunluk= ');
a=input('a_k katsay�lar�n� girin a=');
b=input('b_k katsay�lar�n� girin b=');
x=[1 zeros(1,N-1)];
y=filter(a,b,x);
k=0:N-1; stem(k,y); xlabel('zaman n');
ylabel('Genlik'); title('Birim Impuls Cevabi');