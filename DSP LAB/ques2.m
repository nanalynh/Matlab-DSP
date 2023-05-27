
  t=0:0.01:1;
  K=3;
  xt=0;
  for kk = 1:1:K
    xt=xt+1/kk.*sin(2*3.14*kk.*t)
  endfor
  disp(xt);
  plot(t,xt);



