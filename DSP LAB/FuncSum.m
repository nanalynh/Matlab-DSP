function y = FuncSum(K)
t = 0:0.01:1;
x = 0;
K = 10;
for k = 1:2:K
    x = x + cos(3*pi*k*t);
end
y = x