function [y]=parity(x)
    y=[];
    for i=1:round(length(x)/8)
        y=[y(1:end) x(1:8) mod(sum(x(1:8)),2)];
        x=x(9:end);
    end
end