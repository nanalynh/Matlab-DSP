x = [ 1 2 2 1];
N = length(x);
for k = 0: N-1
    for n = 0: N-1
        X(n+1) = x(n+1)*exp(-j*2*pi*k*n/N);
    end
    Xk(k+1)=sum(X);
end
Xk


%mag = abs(Xk);
%stem(0:N-1,mag);
%legend('|X_k|')
%xlim([-.5 3.5]);
%ylim([-.5 6.5]);

%phas = angle(Xk);
%stem(0:N-1,phas);
%legend('\angle Xk')
%xlim([-.4 3.4]);
%ylim([-3.5 3 ]);

%mag.*exp(j*phas)

%re = real(Xk);
%stem(0:N-1,re);
%xlim([-.4 3.4]);
%ylim([-1.5 6.5]);
%legend ('real Xk')

im = imag(Xk);
stem(0:N-1,im);
xlim([-.4 3.4]);
ylim([-1.5 1.5]);



