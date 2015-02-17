%DEL 3%

vectd = 10:0.5:100; %vattenniv?
vectr = [];

for d = vectd
    r = fd2(d);
    vectr = [vectr r]; 
end

plot(vectd,vectr);

%result = integral(@fd(),'pfd',0.5);