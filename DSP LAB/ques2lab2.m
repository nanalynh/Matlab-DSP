% Define the sampling rate and quantization interval
Ts = 0.01;
Q = 8;

% Generate a time vector from 0 to 1 with a small time step equal to the sampling rate
n = [0:100];

% Generate a continuous-time sinusoidal signal with frequency 10 Hz and amplitude 1
x = 8*cos(4*pi*0.01*n);

% Quantize the signal using the quantization function
xq = Q*(round(x)/Q);
xe = xq-x;
% Plot the original and quantized signals
%plot(n, x, 'b', n, xq, 'r', 'LineWidth', 2);
%stem(n,xq)
%hold on
plot(n,xe);
hold on
xlabel('n');
ylabel('x[n]');
legend('Original signal', 'Quantized signal');
title('Quantized sinusoidal signal with 8 levels');
