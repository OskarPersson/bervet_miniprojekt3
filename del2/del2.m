%DEL 2%

vectd = 10:0.5:100; %vattenniv?
vectr = [];

for i = 1:1:181
    r = fd2(vectd(i));
    vectr = [vectr r];
end

plot(vectd,vectr);

%result = integral(@fd(),'pfd',0.5);