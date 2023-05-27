n = [3 -1.4 .15]
d = [1 -.7 .15 -.025]
zplane(n,d);
%H = tf(n,d,0.1);
%pzmap(H)
poles = pole(H)
mag = abs(poles)


