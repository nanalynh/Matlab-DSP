function[xt] = ques3(t,K)
 t=0:0.01:1;
  K=5;
  xt=0;
  for kk = 1:1:K
    xt=xt+1/kk.*sin(2*3.14*kk.*t)
  endfor
  disp(xt);
  plot(t,xt);

end
