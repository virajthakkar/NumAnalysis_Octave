a=0;
b=1;
n=10;
h=(b-a)/n;
x=a:h:b;
t1=0;
for j=1:0.5*n
  t1=t1+f(x(2*j-1));
  endfor
  
  t3=0;
  for j=1:0.5*n
  t3=t3+f(x(2*j+1));
  endfor
  
  t2=0;
  for j=1:0.5*n
  t2=t2+f(x(2*j));
  endfor
  
  I=(h/3)*(t1+4*t2+t3)