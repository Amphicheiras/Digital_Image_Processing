close all;
clear all;
clc;

%% 13)

X = imread('Q14.tif');
figure(1);
imshow(X);
title('Initial image');

figure(2);
imhist(X);
title('Image histogram');

Y = histeq(X);
figure(3);
imshow(Y);
title('Equalized image');

figure(4);
imhist(Y);
title('Equalized image histogram');