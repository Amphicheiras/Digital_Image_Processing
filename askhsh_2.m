close all;
clear all;
clc;

%% 2)

X = imread('Q11.tif');
figure(1);
imshow(X);
title('Initial pic');

se = strel('ball',2,2);
XX = imerode(X, se);
figure(2);
imshow(XX);
title('Eroded pic');

X1 = imnoise(XX, 'gaussian');
X2 = imnoise(XX, 'gaussian');
X3 = imnoise(XX, 'gaussian');
X4 = imnoise(XX, 'gaussian');
X5 = imnoise(XX, 'gaussian');
figure(3);
subplot(2,3,1), imshow(X1, []), title('1st snap');
subplot(2,3,2), imshow(X2, []), title('2nd snap');
subplot(2,3,3), imshow(X3, []), title('3rd snap');
subplot(2,3,4), imshow(X4, []), title('4th snap');
subplot(2,3,5), imshow(X5, []), title('5th snap');

err(1) = immse(XX, X1);
err(2) = immse(XX, X2);
err(3) = immse(XX, X3);
err(4) = immse(XX, X4);
err(5) = immse(XX, X5);

fprintf('Error 1: %f\n2: %f\n3: %f\n4: %f\n5: %f\n', err(1), err(2), err(3), err(4), err(5))

M = mean(err);
figure(4)
plot(3,M)

X1 = imerode(X, se);
X2 = imerode(X, se);
X3 = imerode(X, se);
X4 = imerode(X, se);
X5 = imerode(X, se);
figure(5);
subplot(2,3,1), imshow(X1, []), title('1st snap');
subplot(2,3,2), imshow(X2, []), title('2nd snap');
subplot(2,3,3), imshow(X3, []), title('3rd snap');
subplot(2,3,4), imshow(X4, []), title('4th snap');
subplot(2,3,5), imshow(X5, []), title('5th snap');