syms n z
x=1;
h1=symsum(x.*(z.^-n),n,0,inf);
h2=h1-(z^-10)*h1


