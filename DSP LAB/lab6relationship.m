n = 0:7;
x = 0.9.^n;
syms w
Xdtft = sum(x.*exp(-j*w*n));


N = 8 ;
k =0:N-1;
wk = 2*pi * k/N;
XXdtft = subs(Xdtft,w,wk);
XXdtft.'

X=fft(x)
X.'
