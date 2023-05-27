syms n z w
h = (2/3)^n*heaviside(n);
Hz = ztrans(h,z);

H = subs(Hz,z,exp(j*w));
H = simplify(H)
h=(2/3)^n;
Hw = symsum(h*exp(-j*w*n),n,0,inf)
