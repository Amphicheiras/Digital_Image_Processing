close all;
clear all;
clc;

%% 3)

a = input('Insert "a" value: ');
b = input('Insert "b" value: ');

X1 = double(imread('Q16.tif'));
X2 = double(imread('tile_pic.tif'));
figure(1);
subplot(1,2,1), imshow(X1, []), title('Theme pic');
subplot(1,2,2), imshow(X2, []), title('Tile pic');

[rows_1, cols_1] = size(X1);
[rows_2, cols_2] = size(X2);
rows_Y = rows_1*rows_2;
cols_Y = cols_1*cols_2;
Y = zeros(rows_Y, cols_Y);

tile_pixel = zeros(rows_2, cols_2);
for k=1:rows_2
	for l=1:cols_2
		tile_pixel(k,l) = a*X2(k,l)+b;
	end
end
tile_pixel(tile_pixel>255)=255;
figure(2);
imshow(tile_pixel, []);

for i=1:rows_1
	for j=1:cols_1
		for k=1:rows_2
			for l=1:cols_2
				Y(i*rows_2+k,j*cols_2+l) = X1(i,j)*tile_pixel(k,l);
			end
		end
	end
end

figure(3);
imshow(Y, []);
title('Photomosaic pic')