clear all;
h=0.25;
a=0;
b=5;

%x=a:h:b
n=(b-a)/h;
for i=1:n+1
x(i)=a+(i-1)*h;
endfor
%length(x)

%yp=zeros(1,length(x)); %Y predicted value
%y=zeros(1,length(x));
y(1)=1; %check function in file f.m before setting an initial value
k=input("the no. of iterations for guess: k=");
for i=1:n
  yp(1)=y(i)+h*f(x(i),y(i));
  for j=1:k
    yp(j+1)=y(i)+ h*0.5*(   f(x(i),y(i))+ f(x(i+1),yp(j))    );
    y(i+1)=yp(j+1);
  endfor 
 endfor
 printf("   xn        yn     \n");
 [x',y']
 plot(x,y,'--r*'),xlabel('x'), ylabel('y(xn)'), title('yn vs xn by Predictor Corrector Method');