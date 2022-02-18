close all;
clear all;
clc;

%% 1)

X = imread('Q11.tif');
figure(1);
imshow(X);
title('Initial pic');

X1 = bitget(X, 1);
X2 = bitget(X, 2);
X3 = bitget(X, 3);
X4 = bitget(X, 4);
X5 = bitget(X, 5);
X6 = bitget(X, 6);
X7 = bitget(X, 7);
X8 = bitget(X, 8);

figure(2);
subplot(4,2,1), imshow(X8, []), title('1st plane');
subplot(4,2,2), imshow(X7, []), title('2nd plane');
subplot(4,2,3), imshow(X6, []), title('3rd plane');
subplot(4,2,4), imshow(X5, []), title('4th plane');
subplot(4,2,5), imshow(X4, []), title('5th plane');
subplot(4,2,6), imshow(X3, []), title('6th plane');
subplot(4,2,7), imshow(X2, []), title('7th plane');
subplot(4,2,8), imshow(X1, []), title('8th plane');

X80 = 128*X8;
X81 = X80 + 64*X7;
X82 = X81 + 32*X6;
X83 = X82 + 16*X5;
X84 = X83 + 8*X4;
X85 = X84 + 4*X3;
X86 = X85 + 2*X2;
X87 = X86 + X1;

figure(3);
subplot(4,2,1), imshow(X80, []), title('1st plane');
subplot(4,2,2), imshow(X81, []), title('1st + 2nd plane');
subplot(4,2,3), imshow(X82, []), title('.. + 3rd plane');
subplot(4,2,4), imshow(X83, []), title('.. + 4th plane');
subplot(4,2,5), imshow(X84, []), title('.. + 5th plane');
subplot(4,2,6), imshow(X85, []), title('.. + 6th plane');
subplot(4,2,7), imshow(X86, []), title('.. + 7th plane');
subplot(4,2,8), imshow(X87, []), title('.. + 8th plane');