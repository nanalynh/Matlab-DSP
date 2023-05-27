Nx = -10:4;           % positions of x
No_x = length(Nx);    % number of elements in x
x = ones(1, No_x);    % magnitudes of x

Nh = 0:15;            % positions of h
No_h = length(Nh);    % number of elements in h
h = 2.^Nh;            % magnitudes of h
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];

y = conv(x,h);            % convolution results of x and h
Ny = (min(Nx) + min(Nh)): (max(Nx) + max(Nh)) ;   % number of elements in y
for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
figure(1)
subplot(3,1,1)
stem(Nx, x)
xlim([-15 15])
subplot(3,1,2)
stem(Nh,h)
xlim([-15 15])
subplot(3,1,3)
stem(Ny, y)
xlim([-15 15])
subplot(3,1,4)
stem(Y)
