syms z;
F = (z-0.4)/(z^2-0.5*z+0.24);
f = iztrans(F);
disp('x|z| =')
disp(F)

disp('x|n| =')
disp(f)
