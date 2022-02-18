close all;
clear all;
clc;

%% 6)

X = imread('Q16.tif');
figure(1);
imshow(X);
title('Initial pic');

block_size = 4; detail = 2; color = 'black';

if length(size(X))>2
    X = rgb2gray(X);
end
if(detail>block_size)
    disp('Error:Value of detail must be less than the block_size.');
    h=[];
else
    
    X = im2double(X);
    [m n] = size(X);
    fun = @(block_struct) mean(mean(block_struct.data));
    I2 = blockproc(X,[block_size block_size],fun);
    I2 = I2- min(min(I2));
    
    Imax = max(max(I2));
    delta = Imax/detail;
    I2r = ceil(I2/delta);
    I2r = block_size-I2r;
    I2r = flipud(I2r);
    
    midpoints_y = [block_size/2:block_size:m];
    midpoints_x = [block_size/2:block_size:n];
    h=figure;
    for i=1:length(midpoints_x)
        for j=1:length(midpoints_y)
			pos = [midpoints_x(i)-0.5*I2r(j,i) midpoints_y(j)-0.5*I2r(j,i) I2r(j,i) I2r(j,i)];
			rectangle('Position',pos,'Curvature',[1 1],'FaceColor',color)
        end
    end
    axis equal
end