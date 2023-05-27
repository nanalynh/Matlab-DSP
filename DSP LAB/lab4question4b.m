syms n z Y
X=ztrans(0.8^n,z)
X1=X*(z^-1);
Y1=z^(-1)*Y;

G = Y-Y1-X-X1;
SOL=solve(G,Y);
pretty(SOL);
y=iztrans (SOL,n);
n1=0:20;
yn=subs(y,n,n1);
stem(n1,yn)
legend('y[n]')
xlim([-.5 10.5])
yn1=subs(y,n,n-1);


test=y+yn1-0.8^n-0.8^(n-1);
test=simplify(test)
