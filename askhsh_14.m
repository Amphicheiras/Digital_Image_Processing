close all;
clear all;
clc;

%% 14)
   
my_filter = zeros(3);
row = 1;
col = 1;
while row <= 3;
	while col <= 3;
		if col == 1
			my_filter(row,col) = input('What is the first value of this row? ');
			col = col + 1;
		elseif col > 1
			my_filter(row,col) = input('What is the next value of this row?  ');
			col = col + 1;
		end
	end 
	row = row +1;
	col = 1;
end 

my_filter

X = imread('Q14.tif');
figure(1);
imshow(X);
title('Initial image');

filtered = imfilter(X, my_filter);
figure(2);
imshow(filtered);
title('Filtered image');

%% +++ LAPLACIAN ENGANCEMENT