clc;
clear all;
close all;

pkg load signal; % load signal package

fm = input("Enter value of fm: "); % frequency of input message signal
fc = input("Enter value of fc: "); % frequency of output modulated signal
kf = input("Enter value of kf: "); % fm modulation index (kf)

ts=1/(10*fc);
fs=(1/ts);
wm=2*pi*fm;
wc=2*pi*fc;
t=0:ts:2;

% Input or Modulating Signal
input_signal = sin(wm * t);
subplot(3,1,1);
plot(t,input_signal,'k','Linewidth',1.5); % 'k' gives black colour plot
xlabel('Time');
ylabel('Amplitude');
title('Input or Modulating Signal');

% Carrier Signal
carrier_signal = sin(wc *t);
subplot(3,1,2);
plot(t,carrier_signal,'r','Linewidth',1.5); % 'r' gives red colour plot
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');

% Frequency Modulated output Signal
fm_signal = cos(wc*t + (kf*2*pi*cumsum(input_signal).*t));
subplot(3,1,3);
plot(t,fm_signal,'b','Linewidth',1.5); % 'b' gives blue colour plot
xlabel('Time');
ylabel('Amplitude');
title('Frequency Modulated Output Signal');

