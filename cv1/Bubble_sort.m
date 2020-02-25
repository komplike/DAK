function [x]=bubble(x)
    len=length(x);
    for i=1:len
        for j=1:len-1
            if x(j)>x(j+1)
                temp=x(j);
                x(j)=x(j+1);
                x(j+1)=temp;
            end
        end
    end
end
