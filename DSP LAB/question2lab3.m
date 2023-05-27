Nx=0:5
No_x = length(Nx);
x=ones(1, No_x);
%h=input('Enter h:   ')
Nh = -10:10;            % positions of h
No_h = length(Nh);
h=e.^(-Nh);
% convolution
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];

for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
% plot results
figure;
subplot(3,1,1)
stem(x)
xlim([-15 15])
subplot(3,1,2)
stem(h)
xlim([-15 15])
subplot(3,1,3)
stem(Y, '-ro');
xlim([-15 15])
title('Convolution of Two Signals without conv function');

