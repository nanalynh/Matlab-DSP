pkg load symbolic

syms n z
x=0.8;
h1=symsum(x.*(z.^-n),n,0,inf)
