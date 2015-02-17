%DEL 3%

vectd = 10:0.5:100; %vattenniv?
vectr = [];
vecth = [];
vectf = [];

for d = vectd
    
    h = 0.5;

    fel = 1;
    first = 1;

    result1 = 0;
    result2 = 0;

    while(fel >= 10e-4)
        h = h/2;
        hh = h*2;

        if (first == 1)
            vect2 = 0:hh:d;
            f2 = fd(vect2, d);
            result2 = trapz(vect2, f2);
        else
            result2 = result1;
        end

        vect1 = 0:h:d;
        f1 = fd(vect1, d);
        result1 = trapz(vect1, f1);
        
        fel = abs(result2-result1)/3;
        first = 0;
    end
      
    vectr = [vectr result1];
    vecth = [vecth h];
    vectf = [vectf fel];
end


subplot(3,1,1);
plot(vectd,vectr);
title('title1');
xlabel('x1');
ylabel('y1');

subplot(3,1,2);
plot(vectd, vecth);
title('title2');
xlabel('x2');
ylabel('y2');

subplot(3,1,3);
plot(vectd, vectf);
title('title3');
xlabel('x3');
ylabel('y3');