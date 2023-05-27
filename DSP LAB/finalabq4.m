syms z;
F = (1.4*z-0.56)/(2*z^2-1.1*z+0.68);
f = iztrans(F);
disp('x|z| =')
disp(F)
 
disp('x|n| =')
disp(f)