x =5*cos(2*pi*n/3) ;
n = 0:19;
syms w
Xdtft = sum(x.*exp(-j*w*n),2);

Xdft = fft(x);
%w = linspace(0, 2*pi, N);

N = length(Xdft);
k = 0: N-1;
wk = 2*pi*k/N;

figure;
subplot(2, 1, 1);
ezplot(abs(Xdtft),[0 2*pi]);
hold on
plot(wk,abs(Xdft))
xlabel('\omega');
ylabel('Magnitude');
title('DTFT and DFT of x[n]');
legend('DTFT', 'DFT');
hold off
legend('DTFT','DFT')

subplot(2, 1, 2);
w1 = 0:.01:2*pi;
XXdtft =subs (Xdtft,w,w1);
plot(w1,angle(XXdtft));
hold on
plot(wk,angle(Xdft),'o')
legend('DTFT','DFT')
hold off
