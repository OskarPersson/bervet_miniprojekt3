%DEL 2%

vectd = 10:0.5:100;
vectr = [];

for i = vectd
    r = integral(@(y)fd(y,i),0,i);
    vectr = [vectr r];
end

plot(vectd,vectr);