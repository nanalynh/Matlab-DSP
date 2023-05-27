% Define the quantization levels
Q = 8;
levels = -Q/2: Q/2;
% Define the coding function
%level = linspace(-Q/2, Q/2, Q);

% Define the quantization step
%delta = level(2) - level(1);
 code = de2bin(levels, delta);
% Display the code sequence
disp("Quantization Code Sequence:");
%for i = 1:length(level)
    disp(sprintf("x̂(nTs) = %g -> %s\n", levels, code));
%endfor
