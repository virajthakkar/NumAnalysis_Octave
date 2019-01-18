clear all;
a=0;
b=1;
n=33; 
h=(b-a)/n;
x=a:h:b;

t1=0;
t2=0;
t3=0;
t4=0;
for j=1:n/3
  t1=t1+f(x(3*j-2));
  
  t2=t2+f(x(3*j-1));
 
  t3=t3+f(x(3*j));
  
 t4=t4+f(x(3*j+1));
  endfor
  
  
  
  I=0;
  I=(3*h/8)*(t1+3*t2+3*t3+t4)