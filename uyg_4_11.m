clear all; close all; 
Wp = 0.3*pi; Ws = 0.4*pi; 
gecis_bandi = Ws - Wp; % gecis bandi uzunlugu 
% Tablo 10.1 kullanilarak hesaplanan gereken pencere uzunlugu 
N = ceil(6.2*pi/gecis_bandi) + 1; 
Nhat=(N-1)/2; 
n= [0:1:N-1] ; 
m=n-Nhat; 
Wc = (Ws+Wp)/2; 
hid = Wc/pi*sinc(Wc*m/pi); %sýnýrlandýrýlmýþ ideal impuls cevabý 
w_hann = (hanning(N))'; % Hanning pencere fonksiyonu 
h = hid .* w_hann; %süzgeç impuls cevabý 
[H,w]=freqz(h,[1],1000,'whole');
H=(H(1:501))';w=(w(1:501))';
mag=abs(H); 
dB_mag=20*log10((mag+eps)/max(mag)); 
subplot(1,1,1) 
subplot(2,2,1); stem(n,hid); title('ideal impuls cevabi') 
axis([0 N-1 -0.1 0.3]); xlabel('n'); ylabel('hid(n)') 
subplot(2,2,2); stem(n,w_hann);title('Hanning Penceresi') 
axis([0 N-1 0 1.1]); xlabel('n'); ylabel('w(n)') 
subplot(2,2,3); stem(n,h);title('Süzgeç impuls cevabi') 
axis([0 N-1 -0.1 0.3]); xlabel('n'); ylabel('h(n)') 
subplot(2,2,4); plot(w/pi,dB_mag);title('Genlik cevabi dB');grid 
axis([0 1 -100 10]); xlabel('frekans/ \pi '); ylabel('desibel')
