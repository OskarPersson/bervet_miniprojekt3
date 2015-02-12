function f = fd2(D)

f = integral(@(y)fd(y,D),0,D);