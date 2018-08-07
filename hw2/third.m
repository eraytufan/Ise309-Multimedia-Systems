clear
clc
%change here for different images
x = imread('eray.jpg');
x=im2double(x);

%initializing filter of mean filter 3x3
h3 = [1 2 1; 2 4 2; 1 2 1];
sum3 = sum(h3(:));%coefficient of the matrix
h3 = (1/sum3)*h3;

%using filter with my image
y3=myconv(x,h3);%blurred image
y3 = x+ 1*(x-y3); %change the formula or a in here
%show original image
imshow(x)
figure
%show 3x3 filtered image
imshow(y3)

%5x5 mean filter is used and printed to the screen
h5 = [1 1 2 1 1; 1 2 4 2 1; 2 4 8 4 2; 1 2 4 2 1; 1 1 2 1 1];
sum5 = sum(h5(:));%coefficient of the matrix
h5 = (1/sum5)*h5;

y5=myconv(x,h5);%blurred image
y5 = x+ 1*(x-y5);%change the formula or a in here
figure
imshow(y5)

%7x7 mean filter is used and printed to the screen
h7 = 1/49*[1 1 2 2 2 1 1 ; 1 2 2 4 2 2 1; 2 2 4 8 4 2 2; 2 4 8 16 8 4 2; 2 2 4 8 4 2 2; 1 2 2 4 2 2 1; 1 1 2 2 2 1 1];
sum7 = sum(h7(:));%coefficient of the matrix
h7 = (1/sum7)*h7;

y7=myconv(x,h7);%blurred image
y7 = x+ 10*(x-y7);%change the formula or a in here
figure
imshow(y7)