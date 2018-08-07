clear
clc
x = imread('lion2.jpg');
x=im2double(x);

%hx filter
h1=zeros(3,3);
h1(2,2) = -1;
h1(2,1) = 1;

%hx filtered image
Ix=conv2(x,h1);
%show original image
imshow(x)
figure
imshow(Ix)


%hy filter
h2=zeros(3,3);
h2(2,2) = -1;
h2(3,2) = 1;

%hy filtered image
Iy=conv2(x,h2);
figure
imshow(Iy)

%magnitude of the image
Im = sqrt(Ix.*Ix + Iy.*Iy);
figure
imshow(Im)


