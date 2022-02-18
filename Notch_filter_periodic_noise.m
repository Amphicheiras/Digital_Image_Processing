close all;
clear all;
clc;

%% 4)

X = imread('Q16.tif');
figure(1);
imshow(X);
title('Input image');

[x_size, y_size] = size(X);
A = 5; f1 = 100; f2 = 200;

my_noise = A*cos(2*pi*f1*x_size)*cos(2*pi*f2*y_size)
Y = imfilter(X, my_noise);
figure(2);
imshow(Y);
title('Noisy image');

Y_DFT = fftshift(fft2(Y));
figure(3);
imagesc(Y_DFT);
title('Input image DFT');

my_filter = 4;
fili = imfilter(Y, my_filter);
figure(4);
imshow(fili);
title('Filtered image');

fili_DFT = abs(fftshift(fft2(fili)));
figure(5);
imagesc(fili_DFT);
title('Filtered image |DFT|');
