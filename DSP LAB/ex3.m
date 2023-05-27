n = [2 1]
d = [1 3 2 ]
zer = roots(n);
pol = roots(d);
plot(real(pol),imag(pol),'*',real(zer),imag(zer),'o')
xlim([-3 1 ]);
legend('poles','zeros');
H = tf(n,d,0.1)
poles = pole (H)
zeros = zero(H)
 pzmap(H)
 xlim([-3 1.2])
