num = [.1 .1]
den=[1 -1.5 0.7]
H = tf(num,den, 0.1);
%s = step(H);
%s=impulse(H)
%stairs (0:length(s) - 1,s);
%legend('impulse response')
impz(num,den)

