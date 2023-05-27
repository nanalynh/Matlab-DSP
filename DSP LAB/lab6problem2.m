n = 0:64;
x = 3*cos(2*pi*n/3);
X = fft(x);

k = 0:1:64;

mag = abs(X);
subplot(2,2,1)
plot(k,mag);
legend('|X|')
title('Magnitude of DFT')
grid on


phas = angle(X);
subplot(2,2,2)
plot(k,phas);
legend('\angle Xk')
title('phase of DFT')
grid on
%mag.*exp(j*phas)

re = real(X);
subplot(2,2,3)
plot(k, re)
title('real of DFT')
legend ('real Xk')
grid on

im = imag(X);
subplot(2,2,4)
plot(k,im)
title('Imaginary part of DFT')
legend ('image Xk')
grid on


