% Discrete-time Signal x1(n): Ts = 0.0002
Ts = 0.0002; n = -25:1:25; nTs = n*Ts;
x = exp(-1000*abs(nTs));
% Analog Signal reconstruction
Dt = 0.00005; t = -0.005:Dt:0.005;
xa = spline(nTs,x,t);
% check
error = max(abs(xa - exp(-1000*abs(t))));
error =	0.0317

error =

    0.0317

% Discrete-time Signal x2(n): Ts = 0.0001
Ts = 0.001; n = -5:1:5; nTs = n*Ts;
x = exp(-1000*abs(nTs));
% Analog Signal reconstruction
Dt = 0.00005; t = -0.005:Dt:0.005;
xa = spline(nTs,x,t);
% check
error = max(abs(xa - exp(-1000*abs(t))));
error =	0.1679

error =

    0.1679