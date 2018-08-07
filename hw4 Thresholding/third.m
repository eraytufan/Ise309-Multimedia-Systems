clear
clc

x = imread('grayImage.jpg');
[m,n] = size(x);
y = zeros(m,n);

orj = imread('ground_truth.png');
tp = zeros(255,1);%true positive
fp = zeros(255,1);%false positive
tn = zeros(255,1);%true negative
fn = zeros(255,1);%false negative
%create an array with the same size as the image
y = zeros(m,n);
for threshold=1:255%try it for every threshold value
    for i=1:m
        for j=1:n
            if(x(i,j) < threshold)%threshold negative
                y(i,j) = 0;
                if(orj(i,j)== 0)
                    tn(threshold,1) = tn(threshold,1) +1;%true negative
                else
                    fn(threshold,1) = fn(threshold,1) +1;%false negative
                end
            else%threshold positive
                y(i,j) = 255;
                if(orj(i,j)== 255)
                    tp(threshold,1) = tp(threshold,1) +1;%true positive
                else
                    fp(threshold,1) = fp(threshold,1) +1;%false positive
                end
            end

        end
    end
    
    tp(threshold,1) = tp(threshold,1)/(tp(threshold,1) + fn(threshold,1));
    fp(threshold,1) = fp(threshold,1)/(fp(threshold,1) + tn(threshold,1));
end


plot(fp,tp)
xlabel('false positive')
ylabel('true positive')

