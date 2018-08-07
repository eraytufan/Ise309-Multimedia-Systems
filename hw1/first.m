clear
clc
x = imread('Baboon.bmp');

%initializing filter of mean filter 3x3
h3 = zeros(3,3);
h3(:,:) = 1/9;

%using filter with my image
y3=myconv(x,h3);
%show original image
imshow(x)
figure
%show 3x3 filtered image
imshow(y3)

%5x5 mean filter is used and printed to the screen
h5 = zeros(5,5);
h5(:,:) = 1/25;
y5=myconv(x,h5);
figure
imshow(y5)

%9x9 mean filter is used and printed to the screen
h9 = zeros(9,9);
h9(:,:) = 1/81;
y9=myconv(x,h9);
figure
imshow(y9)

%15x15 mean filter is used and printed to the screen
h15 = zeros(15,15);
h15(:,:) = 1/225;
y15=myconv(x,h15);
figure
imshow(y15)



