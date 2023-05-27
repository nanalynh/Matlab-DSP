
syms n z
x=0.8;
h1=symsum(x.*(z.^-n),n,0,inf)
syms n omega

h3(n) = cos(omega*n)*heaviside(n);
syms z
Hz3 = ztrans(h3(n), n, z);
Hz3 = simplify(Hz3);
Hz3 = (1 - cos(omega)*z^-1)/(z^-2 - 2*(z^-1)*cos(omega) + 1);
h4=h1*Hz3

