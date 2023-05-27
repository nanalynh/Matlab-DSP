Nx = -15:15;           % positions of x
No_x = length(Nx);    % number of elements in x
x = ones(1, No_x);    % magnitudes of x

Nh = -20:20;            % positions of h
No_h = length(Nh);    % number of elements in h
h = 2.^Nh;            % magnitudes of h

y = conv(x,h);            % convolution results of x and h
Ny = (min(Nx) + min(Nh)): (max(Nx) + max(Nh)) ;   % number of elements in y

figure(1)
subplot(3,1,1)
stem(Nx, x)
xlim([-20 20])
subplot(3,1,2)
stem(Nh,h)
xlim([-20 20])
subplot(3,1,3)
stem(Ny, y)

