a=0;
b=1;
n=100;
h=(b-a)/n;
x=a:h:b;

t1=0;
for i=1:n
  t1=t1+f(x(i));
  endfor
  t2=0;
  for i=2:n+1
    t2=t2+f(x(i));
    endfor
    
    I=0;
    I=0.5*h*(t1+t2)