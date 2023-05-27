% Define the quantization levels
Q = 8;
levels = linspace(-Q/2, Q/2, Q);
level =-Q/2:Q/2;
% Define the coding function
function code = encode_level(level, levels)
    index = find(level == levels);
    code = dec2bin(index-5, log10(length(level)));
endfunction
% Define the quantization step
delta = levels(2) - levels(1);

% Display the code sequence
disp("Quantization Code Sequence:");
for i = 1:length(levels)
    code = encode_level(levels(i), levels);
    fprintf("x̂(nTs) = %g -> %s\n", level(i), code);
endfor
