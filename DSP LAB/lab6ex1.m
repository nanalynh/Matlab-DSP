syms w
n = 0:20;
x = 0.8.^n;
X = sum(x.*exp(-1i*w*n));

%ezplot(abs(X),[-pi pi])
%title('Magnitude of DTFT')
%ylim([ 0 5.4])

%w1 = -pi :.01: pi;
%XX = subs(X,w,w1)
%plot (w1,angle(XX));
%xlim([-pi pi])
%title('phase of DTFT')



%ezplot(abs(X) , [-5*pi 5*pi]);
%title('Magnitude of DTFT in 5 period')
%ylim([0 5.8])

w1 = -5*pi :.01:5*pi;
XX = subs(X,w,w1);
plot(w1,angle(XX));
xlim([-5*pi 5*pi])
title(' Phase of DTFT in 5 periods')





