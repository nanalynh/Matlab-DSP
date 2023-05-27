close all;

clear all;

vmin = -8;

vmax = 8;

n =3;

%% plotting the original and the sampled signal

t= 0:0.0005:2;

x = 8*cos(4*pi*t);

Ts = 0.01;

t2 = 0:Ts:2;

xs = 8*cos(4*pi*t2);

figure

subplot(211)

plot(t,x, 'LineWidth',1.2)

xlabel('time (s)')

ylabel('x_s(t)')

hold on

stem(t2,xs,'.')

title('Original and Sampled signals')

set(gca, "linewidth", 1, "fontsize", 18);

grid on

legend('x(t)', 'x_s(t)')

v = vmin:0.001:vmax;

lsb = (vmax-vmin)/2^n;

figure

quant = quantizer(v, n, vmin, vmax);

subplot(211)

plot(v, quant, 'LineWidth', 1.2)

xlabel('V ')

ylabel('Quantized bits')

title('Quantization Function')

set(gca, "linewidth", 1, "fontsize", 18);

grid on

xq = quantizer(xs, n, vmin, vmax);

fprintf("The first 10 encoded bits are :\n" )

dec2bin(xq(1:10))

xq = zerohold(xq, t, t2);

figure(1)

xq = vmin+xq*lsb;

subplot(212)

plot(t,x, 'LineWidth',1.2)

xlabel('time (s)')

ylabel('x_q(t)')

hold on

plot(t,xq, 'LineWidth',1.2)

legend('x(t)', 'x_q(t)')

title('Original signal and Quantized Signal')

set(gca, "linewidth", 1, "fontsize", 18);

grid on

figure(2)

% x = zerohold(xs, t, t2);

subplot(212)

plot(t,x-xq, 'LineWidth',1.2)

xlabel('time (s)')

ylabel('n_q(t) = x(t)-x_q(t)')

title('Quantization Error')

set(gca, "linewidth", 1, "fontsize", 18);

grid on

function [xq] = quantizer(x, n, vmin, vmax)

% this is the quantizer function, this produced the quantized bits as outputs

lsb = (vmax-vmin)/2^n;

levels = vmin+lsb*(1:(2^n-1));

xq = zeros(size(x));

for i = 1:(2^n-1)

xq = xq+(x>=levels(i));

end

end

function [xq] = zerohold(x, t, t2)

% this generates the zero hold signal

xq = zeros(size(t));

for i = 1:length(t)

xq(i) = x(find(t2<=t(i), 1, 'last'));

end

end
