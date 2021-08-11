pkg load communications;

clc;
clear all;
close all;

% Parameters
Fs = 1000;
T  = 1;
Fc = 200;
Fm = 20;

freqdev = 10

% Signals
t = 0:1/Fs:T;
x = cos(2*pi*Fm*t);
y = fmmod(x,Fc,Fs,freqdev);
z = fmdemod(y,Fc,Fs,freqdev);

% Plot
figure('Name','FM Modulation');
subplot(3,1,1); plot(t,x,'b'); title('Modulating signal');
grid on;

subplot(3,1,2); plot(t,y,'g'); title('Frequency Modulated signal');
grid on;

subplot(3,1,3); plot(t,z,'r'); title('Frequency Demodulated signal');
grid on;