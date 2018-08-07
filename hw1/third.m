clear
clc
x = imread('Cameraman.bmp');
%filter to shift the image by 1
h = [0 1 0; 0 0 0; 0 0 0];


y=myconv(x,h);
%show the original image
imshow(x)

%show the 1 shifted image
figure
imshow(y)

%I use a different filter to shift the image up 5 times.
h2 = zeros(11,11);
h2(1,6) = 1

z=myconv(x,h2);


%show the 5 times shifted image
figure
imshow(z)



