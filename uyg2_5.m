% Discrete-time Signal x1(n)
Ts = 0.0002; n = -25:1:25; nTs = n*Ts;
x = exp(-1000*abs(nTs));
% Analog Signal reconstruction
Dt = 0.00005; t = -0.005:Dt:0.005;
xa = x* sinc(Fs*(ones(length(n),1)*t-nTs'*ones(1,length(t))));
% check
error = max(abs(xa - exp(-1000*abs(t))));
error =	0.0363