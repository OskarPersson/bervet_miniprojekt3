vecty = [0 5 10 15 20];
vectw = [20.00 20.05 20.25 20.51 21.18];
vectf = [];

for i=0:5:20
  vectf = [vectf 62.5*(20-i)*(vectw((i/5)+1))];
end

result = trapz(vecty,vectf);
disp(result);


