Nx = 0:5;           % positions of x
No_x = length(Nx);    % number of elements in x
x = ones(1, No_x);    % magnitudes of x

Nh = -10:10;            % positions of h
No_h = length(Nh);    % number of elements in h
h = e.^(-Nh);            % magnitudes of h

function [output] = myConvolve(x, h)
  % Get length of input and kernel
  lenX = length(x);
  lenH = length(h);

  % Initialize output vector with zeros
  output = zeros(1, lenX + lenH - 1);

  % Loop over each index in the output vector
  for n = 1:length(output)
    % Compute the current output value
    sum = 0;
    for k = 1:lenH
      if (n-k+1 > 0) && (n-k+1 <= lenX)
        sum += h(k) * x(n-k+1);
      end
    end
    output(n) = sum;
  end
end

figure;
subplot(3,1,1)
stem(x)
xlim([-15 15])
subplot(3,1,2)
stem(h)
xlim([-15 15])
subplot(3,1,3)
stem(output(n), '-ro');
xlim([-15 15])
title('Convolution of Two Signals without conv function');

myConvolve(x, h)
