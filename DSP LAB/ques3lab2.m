function y = adc_NU(x, R, B)

level = [0:R/(2^B):R-R/(2^B)];
temp = [-Inf,(level(2:end)-R/(2^(B+1))),Inf];
y = zeros(1,length(x));
for i = 1:length(level)
  y = y + (x >= temp(i)).*(x < temp(i+1)).*level(i);
  endfor
endfunction
% ADC_NU function test
R = 10;
B = 3;
x = -8:8;
y = adc_NU(x,R,B);
t = 0:length(x)-1;
figure(11)
plot(t,x,t,y)
plot(t,x,'g-*','LineWidth',2.2)
holdon stem(t,y,'filled','LineWidth',2.2)
holdoff title('Ramp function unipolar quantization')
xlabel('Time in sec')
ylabel('Signal magnitude in volts')
axis([-0.1,20.1,-5.1,15.1])


