clear
clc
%change this value for different variances.
variance = 5;
%standard deviation
sd = sqrt(variance);

x = linspace(-100, 100, 201);
%mean value of all x values. In this case it is 0.
meanValue = mean(x);

%gaussian formula from the homework file.
gaussian = exp(-power(x-meanValue,2)/times(2,variance))/times(sqrt(times(2,pi)),sd);
    

 
plot(x,gaussian),xlabel('x'),ylabel('Gausssian Function')
