function decode(x)
    for i=1:length(x)/9
        if mod(sum(x(1:8)),2)~=x(9)
            disp(strcat("Chyba v byte: ",num2str(i),"."));
        end
        x=x(10:length(x));
    end      
end