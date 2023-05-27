clc;clear all;close all;
nh=1:3; % Range of h(n)
h=[1 1 1]; % h(n)
n=1:13; % Range of x(n)
x=cos(2*pi.*(n/3)); % Calculating x(n)
ny=1:15; % Range of y(n)
y=conv(x,h); % Finding y(n) using conv function of matlab

%% Plotting x(n)
subplot(311); % Subplot method
stem(n,x); % Plotting x(n)
title('x(n)'); % Giving title
ylabel('Amplitude'); % Labelling y-axis
xlabel('n----->'); % Labelling y-axis
xlim([1 13]); % Adjusting x axis as per non zero values of x(n)

%%
%% Plotting h(n)
subplot(312);
stem(nh,h); % Plotting h(n)
title('h(n)'); % Giving title
ylabel('Amplitude');% Labelling y-axis
xlabel('n----->');% Labelling x-axis
xlim([1 3]);% Adjusting x axis as per non zero values of h(n)

%% Plotting y(n)
subplot(313);
stem(ny,y); % Plotting y(n)
title('y(n)'); % Giving title
ylabel('Amplitude');% Labelling y-axis
xlabel('n----->');% Labelling x-axis
xlim([1 15]);% Adjusting x axis as per non zero values of y(n)
