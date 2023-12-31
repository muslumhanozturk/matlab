b = [0.0181, 0.0543, 0.0543, 0.0181];    % filter coefficient array b
a = [1.0000, -1.7600, 1.1829, -0.2781];  % filter coefficient array a
m = 0:length(b)-1; l = 0:length(a)-1;    % index arrays m and 1
K = 500  ; k = 0:1:K;                    % index array k for frequencies
w = pi*k/K;                              % [0, pi] axis divided into 501 points.
num = b * exp(-j*m'*w);                  % Numerator calculations
den = a * exp(-j*l'*w);                      % Denominator calculations
H = num ./ den;                              % Frequency response
magH = abs(H); angH = angle(H);              % mag and phase responses
subplot(1,1,1);
subplot(2,1,1); plot(w/pi,magH); grid; axis([0,1,0,1])
xlabel('frequency in pi units'); ylabel('|H|');
title('Magnitude Response');
subplot(2,1,2); plot(w/pi,angH/pi); grid
xlabel('frequency in pi units'); ylabel('Phase in pi Radians');
title('Phase Response');