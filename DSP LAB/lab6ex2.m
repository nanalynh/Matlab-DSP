syms n w
x = 0.6^n

X = symsum(x*exp(-j*w*n),n,0,inf)

w1 = -pi : .01 : pi;
X_= subs(X,w,w1);
plot(w1,abs(X_));
legend('|X(\omega)|')
xlim([-pi pi ])


%plot(w1,angle(X_));
%xlim([-pi pi])
%legend('\angle X(\omega)')