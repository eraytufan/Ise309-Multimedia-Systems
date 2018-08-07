function label(x_start, y_start, n, B, L)

L(x_start, y_start) = n;

[X,Y] = size(B);

for i=2:X-1
    for j=2:Y-1
        for k=-1:1
            for l=-1:1
                if(k ~= 0 && l ~= 0)
                    if(L(i+k,j+k)==0 && B(i+k,j+k))
                        label(i,j,n,B,L)
                    end
                end
            end
        end
    end
end