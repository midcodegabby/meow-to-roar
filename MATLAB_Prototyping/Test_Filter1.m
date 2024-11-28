%% Test_Filter1
% Author: Gabriel Rodgers
% Date: 11/23/2024
% Purpose: Test out filtering on different signals -> this script creates
% a basic filter design that will be used to modify a signal
% 
% Additionally to figure out how to convert a cat's meow to sound more like
% a lion's roar as a proof of concept. 

close all; % close all open graphs

bw = 0.99; % bandwidth of the pass band
shift = 0; % shift of the filter

speed = 0.15; % rate change of 0.15; this is enough to make the meow -> roar

% this section creates a sinc LPF
n = 0:600; % define range of n
h = sin(bw*pi*(n-300))./(pi*(n-300)).*cos((shift*pi*n)); % create sinc for every point in n, then shift
h(301) = bw*cos(shift*pi*301); % middle val of LPF
% stem(n,h); % plot the filter, h, at each point n
% freqz(h); % plot the f-domain representation of the filter

% read the .wav file into two vars: data of the file, and sampling rate
% (fs) of the file [NOTE: Make sure to add .wav file location to search
% options in matlab by right clicking on the .wav file and adding its
% location to search path
[data, fs] = audioread('58981__timtube__rabble-meowing.wav');
p0 = audioplayer(data, speed*fs); % Create an audioplayer object from the .wav file

% This section does some filtering:
y = filter(h, 1, data); % filter the .wav file
freqz(y); % This is the frequency response of the filtered signal

p1 = audioplayer(y, speed*fs); % create audioplayer object from the filtered data

% play(p0) % play the original sound
play(p1); % play the filtered sound
