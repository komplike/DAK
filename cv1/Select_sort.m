function [x] =select(x)
    len=length(x);
    for i=1:len-1
        min=i;
        for j=i+1:len
            if x(j)<x(min)
                min=j;
            end
        end
        if min~=i 
            temp=x(min);
            x(min)=x(i);
            x(i)=temp;    
        end
    end
end