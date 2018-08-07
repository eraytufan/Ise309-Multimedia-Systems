clear
clc

x = imread('grayImage.jpg');
[m,n] = size(x);

z = zeros(256,1);
z = int16(z);%we need it to be 16 bit int because it is going to be big

for i=1:m
    for j=1:n
        %count the number of each pixel number
        z(x(i,j)+1,1) = z(x(i,j)+1,1) + 1;
    end
end
plot(z)