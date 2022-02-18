close all;
clear all;
clc;

%% 5)

X = imread('Q16.tif');
figure(1);
imshow(X);
title('Initial pic');

Y = abs(fftshift(fft2(X)));
figure(2)
imagesc(Y);
title('Fft of initial image');

my_filter = [0.0625 0.125 0.0625; 0.125 0.25 0.125; 0.0625 0.125 0.0625;];
filtered = imfilter(Y, my_filter);
figure(3)
imagesc(filtered);
title('Time domain filtered spectrum image');

filtered_conv = imfilter(X,my_filter,'conv');
figure(4)
imshow(filtered_conv);
title('Space domain filtered with convolution image');

YY = abs(fftshift(fft2(filtered_conv)));
figure(5)
imagesc(YY);
title('Space domai filtered with convolution spectrum image');

err = immse(X,filtered_conv)
err = immse(Y,YY)
err = immse(filtered,YY)