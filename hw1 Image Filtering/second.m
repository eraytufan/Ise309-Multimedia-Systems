clear
clc
x = imread('Baboon.bmp');
x=im2double(x);
%initializing filter of mean filter 3x3
h3 = zeros(3,3);
h3(:,:) = 1/9;

%using filter with my image
y3=myconv(x,h3);
%show original image
imshow(x)
figure
%Substract original image from 3x3 filtered image
filter3 = x -y3;
imshow(filter3)

%5x5 mean filter is used
h5 = zeros(5,5);
h5(:,:) = 1/25;
y5=myconv(x,h5);
%Substract original image from 5x5 filtered image and show it
filter5= x -y5;
figure
imshow(filter5)

%9x9 mean filter is used
h9 = zeros(9,9);
h9(:,:) = 1/81;
y9=myconv(x,h9);
%Substract original image from 9x9 filtered image and show it
filter9= x -y9;
figure
imshow(filter9)

%15x15 mean filter is used and printed to the screen
h15 = zeros(15,15);
h15(:,:) = 1/225;
y15=myconv(x,h15);
%Substract original image from 5x5 filtered image and show it
filter15= x -y15;
figure
imshow(filter15)



