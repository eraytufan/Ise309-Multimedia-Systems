function [y] = myconv( x,h )

%this function takes x as a photograph input and h as a filter and returns
%the filtered image using convolution.

%Get the height and the width of the input image.
[m,n] = size(x);
%I change the int to double because we are goint to do arithmetic
%equations.
x=im2double(x);
%create an array with the same size as the image
y = zeros(m,n);
[height,~] = size(h);
%this xyz variable is used to calculate max U and V numbers can take
%In the formula it is stated as from the convolution method. I use xyz
%variable to determine when to finish the loop.
xyz = (height-1)/2;
%this mean variable represents the middle point of the filter array. For
%example if filter array is 3x3 then mean value gets 2 which is the middle
%value of the 2-D array. 
mean = (height+1)/2;
%the first 2 loop is used for the x and y coordinates of the image. The
%other 2 loops is for to calculate the convolution formula. 
%The count and count2 variables represent the u and v values in the
%Convolution formula. 
for i=1:m
    for j=1:n
        
        
        %These loops calculates the convolution for the given point which
        %was on the formula.
        for count=-xyz:xyz
            for count2=-xyz:xyz
                %This if statement checks boundaries. If the given array is
                %out of bounds then skips it. Because it skips the given
                %bounderies, it makes zero padding in the filtered image.
                if(i-count<m && i-count >1 && j-count2<n && j-count2>1 )
                    y(i,j) = y(i,j) + mtimes(h(mean+count,mean+count2),x(i-count,j-count2));
                end
            end
        end
    end
end