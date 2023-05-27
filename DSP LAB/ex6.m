num =[.1 .1];
den = [1 -1.5 .7];
H = tf(num,den, 0.1);
s = step(H);

%s = dstep(H)
%stairs (0:length(s) - 1,s);
%legend('Step response')


%n = 0:80;
%s = step(num,den,n);
%stairs(n,s)
%legend('Step response')


%stepz(num,den)

