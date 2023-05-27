syms w
n = 0:10;
x = cos(pi*n/3);
X = sum(x.*exp(-1i*w*n));

ezplot(abs(X),[-3*pi 3*pi])
title('Magnitude of DTFT')
ylim([ 0 10.4])

w1 = -3*pi :.01: 3*pi;
XX = subs(X,w,w1)
plot (w1,angle(XX));
xlim([-3*pi 3*pi])
title('phase of DTFT')



ezplot(abs(X) , [-7*pi 7*pi]);
title('Magnitude of DTFT in 7 period')
ylim([0 10.8])

w1 = -7*pi :.01:7*pi;
XX = subs(X,w,w1);
plot(w1,angle(XX));
xlim([-7*pi 7*pi])
title(' Phase of DTFT in 7 periods')


