num=[8 10 -6 ];
den=[1 2 -1 -2];
H= tf(num,den,0.1)
zpk(H)
[coeff,roots,K] = residue(num,den)
%poles=pole(H)
%zeros=zero(H)
%pzmap(H)
%xlim([-3 1.2])
%zer = roots(num);
%pol = roots(den);
%plot(real(pol),imag(pol),'*',real(zer),imag(zer),'o')
%xlim([-4 2])
%legend('poles','zeros');