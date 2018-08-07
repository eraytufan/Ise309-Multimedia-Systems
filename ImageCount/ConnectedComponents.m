function [L] = ConnectedComponents(B)

[X,Y] = size(B);
L = zeros(X,Y);
n=1;

for i=1:X
    for j=1:Y
        if(B(i,j) && L(i,j)==0)
            
           label(i,j,n,B,L);
           n = n+1;
        
        end
    end
end