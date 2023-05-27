syms z n w Yz X
Y1z = z*(-1)*Yz;
G = Yz - 0.9*Y1z-X;
Yz = solve(G,Yz);
Hz = Yz/X
Hw = subs(Hz,z,exp(j*w))
