clear
clc

x = imread('bird 1.jpg');
x = rgb2gray(x);
[m,n] = size(x);
threshold = 120;%threshold value

%create an array with the same size as the image
y = zeros(m,n);

for i=1:m
    for j=1:n
        if(x(i,j) > threshold)%if it is closer than treshold value
            y(i,j) = 0;
        else
            y(i,j) = 255;
        end
       
    end
end
y = logical(y);
imshow(y);





