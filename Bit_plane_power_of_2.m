close all;
clear all;
clc;

%% 11)

levels = input('Number of intensity levels: ');

X = imread('Q11.tif');
figure(1);
imshow(X);
title('Initial pic');

[Y, map] = gray2ind(X, levels);
figure(2);
imshow(Y, map);
title('New pic');
