clear
clc
x = imread('Lena.bmp');

%it is the filter which was in the course slides.
h = [-1/9 -1/9 -1/9; -1/9 17/9 -1/9; -1/9 -1/9 -1/9];

%use filter
y=myconv(x,h);
%show the original picture
imshow(x)

%show the sharpened image.
figure
imshow(y)



