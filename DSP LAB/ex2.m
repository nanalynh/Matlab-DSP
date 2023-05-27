syms n z X Y
Y1 = (z^-1)*Y;
X1 = (z^-1)*X;
G = Y-Y1-X-X1
Y = solve(G,Y);
H=Y/X
num =[2 1];
den = [1 3 2 ];
Ts = 0.4;
H = tf(num, den, Ts)

