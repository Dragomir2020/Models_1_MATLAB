clear all; close all; clc;

filename = input('Filename: ','s');

[y, Fs, nbits] = wavread(filename);
ssize = length(y);
N = ssize(1,1);
tt = 1:N;
ta = tt/Fs;


fprintf('Fs = %i \nnbits = %i\n', Fs, nbits);
plot(ta,y);
xlabel('Time in seconds');
title(filename);


pause

M = 1024;
ff = 1:M/2;
fa = ff*Fs/M;

WindowBegin = 1000;  % The beginning sample index of the time segment to plot its spectrum
                     % WindowBegin1 must be between 1 and N-M
Y1 = fft(y([WindowBegin:WindowBegin+M-1],1));   % The fft command calculates the spectrum
Y11 = abs(Y1([1:M/2],1));   % This step obtains the amplitude of the spectrum at each frequency

plot(fa,Y11);
xlabel('Frequency (Hz)');


