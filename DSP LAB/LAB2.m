 xk = input('Enter the input signal x(k): '); 
 hk = input('Enter the impulse response h(k): ');
 yk = conv(xk,hk);
 %Convoluted Output stem(yk) Testcase: Enter the input signal x(k): [2 6 6 8 3 4 9] Enter the impulse response h(k): [6 9 8 9 3 9 5] 
 %(b). Code: 
 n = -5:15;
 un1 = n>= -1; 
 un_1 = n>= 1;
 xn = (1/2).^n.*un1;
 hn = (1/3).^n.*un_1;
 yn = conv(xn,hn,'same'); 
 stem(yn) 
 %(c). Code:
 n = 1:15; 
 un1 = n>= -1;
 un_1 = n>= 1; 
 xn = (1/2).^n.*un1; 
 hn = (1/3).^n.*un_1;
 Xw = fft(xn);
 Hw = fft(hn);
 Yw = Xw.*Hw;
 yn = ifft(Yw);
 stem(yn) 
