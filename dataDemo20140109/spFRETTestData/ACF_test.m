%% Initailize

clear all;
close all;
clc;



% Data length:
N = 1000;

% Offset & Amplitude:
A = 10;

% Plot out ACF for different data sample:
%% figure(1): constant
data1 = A*ones(1,N);
figure(1);
title('ACF Constant');

subplot(3,1,1);
plot(data1,'o');
subplot(3,1,2);
plot(fftshift(abs(fft(data1))),'o');
subplot(3,1,3);
plot(acf_fft(data1),'o');


%% figure(2): white noise
data2 = A*ones(1,N)+ A*randn(1,N);
figure(2);
title('ACF White Noise');

subplot(3,1,1);
plot(data2,'o');
subplot(3,1,2);
plot(fftshift(abs(fft(data2))),'o');
subplot(3,1,3);
plot(acf_fft(data2),'o');

%% figure(3): constant + sin function
data3 = A*ones(1,N)+ A*sin(1:N);
figure(3);
title('ACF sin(t)');

subplot(3,1,1);
plot(data3,'o');
subplot(3,1,2);
plot(fftshift(abs(fft(data3))),'o');
subplot(3,1,3);
plot(acf_fft(data3),'o');

%% figure(4): constant + abs(sin function) sqrted

data4 = A*ones(1,N)+ abs(A*sin(1:N)).^2;
figure(4);
title('ACF abs(sin(t))');

subplot(3,1,1);
plot(data4,'o');
subplot(3,1,2);
plot(fftshift(abs(fft(data4))),'o');
subplot(3,1,3);
plot(acf_fft(data4),'o');

%% figure(5): constant + wave packet
t = -N/2+1:N/2;
i_shift = 200;
var_p = 100;
data5 =  A*ones(1,N)+ A*exp(-(t-i_shift).^2/var_p)/2;

figure(5);
title('ACF wave packet');

subplot(3,1,1);
plot(data5,'o');
subplot(3,1,2);
plot(fftshift(abs(fft(data5-mean(data5)))),'o');
subplot(3,1,3);
plot(acf_fft(data5),'o');

%% figure(6): constant + 2 wave packet:
t = -N/2+1:N/2;
left_shift = 100;
right_shift = 100;
left_var = 1000;
right_var = 1000;
data6 =  A*ones(1,N)+ A*exp(-(t+left_shift).^2/left_var)/2 + A*exp(-(t-right_shift).^2/right_var)/2;

figure(6);
title('ACF 2 wave packet');

subplot(3,1,1);
plot(data6,'o');
subplot(3,1,2);
plot(fftshift(abs(fft(data6-mean(data6)))),'o');
subplot(3,1,3);
plot(acf_fft(data6),'o');







