n = 0:19;
x = 5*cos(2*pi*n/3);
N = length(x);

% Define frequency axis for both plots
w = linspace(0, 2*pi, N);
k = 0:N-1;
wk = 2*pi*k/N;

% Compute and plot DTFT
Xdtft = sum(x .* exp(-1j*w.'*n), 2);
figure;
subplot(2, 1, 1);
plot(w, abs(Xdtft));
hold on;

% Compute and plot DFT
Xdft = fft(x);
%stem(wk, abs(Xdft));
xlabel('\omega');
ylabel('Magnitude');
title('DTFT and DFT of x[n]');
legend('DTFT', 'DFT');
hold off;

% Compute and plot phase of DTFT and DFT
subplot(2, 1, 2);
plot(w, angle(Xdtft));
hold on;
%stem(wk, angle(Xdft));
xlabel('\omega');
xlabel('\omega');
ylabel('Phase');
legend('DTFT', 'DFT');
hold off;