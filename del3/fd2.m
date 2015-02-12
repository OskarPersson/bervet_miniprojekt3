function f = fd2(D)



h = 0.125;
h2 = h/2;

correct = 0;
first = 1;

while(correct == 0)
    
    if (first == 1)
        vect = 0:h:D;
        vect2 = [];
        for i = 1:length(vect)
            vect2 = [vect2 fd(vect(i),D)];
        end

        result1 = trapz(vect, vect2);
    else
        result1 = result2;
    end
    
    vect = 0:h2:D;
    vect2 = [];
    for i = 1:length(vect)
        vect2 = [vect2 fd(vect(i),D)];
    end
    
    result2 = trapz(vect, vect2);
    
    if(abs(result1-result2)/3 < 0.0001)
        correct = 1;
    end
    first = 0;
    h2 = h2/2;
end

f = result2;

%f = trapz(vect);

%f = integral(@(y)fd(y,D),0,D);

