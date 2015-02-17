function f = fd2(D)



h = 0.5;

correct = 0;
first = 1;

result1 = 0;
result2 = 0;

while(correct == 0)
    h2 = h*2;
    
    if (first == 1)
        vect2 = 0:h2:D;
        f2 = fd(vect2, D);
        result2 = trapz(vect2, f2);
    else
        result2 = result1;
    end
    
    vect1 = 0:h:D;
    f1 = fd(vect1, D);
    result1 = trapz(vect1, f1);
    
    if(abs(result1-result2)/3 < 0.0001)
        correct = 1;
    end
    first = 0;
    h = h/2;
end

f = result2;

