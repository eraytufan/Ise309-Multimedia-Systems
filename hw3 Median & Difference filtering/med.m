function [y] = med( x,h )

%size of the image
[m,n] = size(x);


x=im2double(x);

y = zeros(m,n);

height = h;

xyz = (height-1)/2;
total = mtimes(h,h);
%for all pixels in image
for i=1:m
    for j=1:n
        
        %array is 0 because padding is 0
        medNumb = zeros(1,total);
        count3 = 1;
        for count=-xyz:xyz
            for count2=-xyz:xyz
                %if it is not out of boundry
                if(i-count<m && i-count >1 && j-count2<n && j-count2>1 )
                    %add the number to the array
                    medNumb(count3) = x(i-count,j-count2);
                    count3 = count3 + 1;
                end
            end    
        end
        %assign median number of the array to the pixel
        y(i,j) = median(medNumb);
        
    end
end