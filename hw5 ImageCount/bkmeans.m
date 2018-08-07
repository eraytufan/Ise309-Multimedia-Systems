%k-means cluster code

x = imread('bird 3.bmp');
x = rgb2gray(x);
[m,n] = size(x);
threshold = 120;%threshold value

%create an array with the same size as the image
y = zeros(m,n);

r_b = [];
r_f = [];

m_f = 255;
m_b = 0;
for xyz=1:15
    r_b = [];
    r_f = [];
    for i=1:m
        for j=1:n
            if(x(i,j) > threshold)%if it is closer than treshold value
                y(i,j) = 0;
                r_b = [r_b x(i,j)];%add to r_b
            else
                y(i,j) = 255;%foreground
                r_f = [r_f x(i,j)];%add to r_f
            end

        end
    end
    m_f = mean(r_f);
    m_b = mean(r_b);
    threshold2 = threshold;
    threshold = (m_f+m_b)/2;%find the new threshold value
    if(threshold == threshold2)%if threshold does not change
        break
    end
end
threshold
y = logical(y);
imshow(y)

%I used the same algorithm in the slides but it goes to infinity.
%It should work like bwlabel
%T = ConnectedComponents(y)
