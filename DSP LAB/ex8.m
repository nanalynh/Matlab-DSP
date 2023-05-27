n=0:3;
h=[3 5 2 1]
syms z w
Htf = sum(h.*z.^-n);

H = subs (Htf,z,exp(j*w));
H=simplify(H)
Hw = sum(h.*exp(-j*w*n))
