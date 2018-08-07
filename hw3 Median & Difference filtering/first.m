clear
clc
x = imread('Lena3.bmp');

%3x3 Median filtered image
y3=med(x,3);
%show original image
imshow(x)
figure
imshow(y3)

%5x5 median filtered image
y5=med(x,5);
figure
imshow(y5)

%7x7 median filtered image
y7=med(x,7);
figure
imshow(y7)
