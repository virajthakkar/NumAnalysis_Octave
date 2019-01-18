clear all;


fun(3)
abs(fun(1))

a=input("enter a ");
b=input(" enter b ");
%c=input(" enter a number between a and b");

%n=input(" number of times to run the loop");




i=0;

do


c=0.5*(a+b);
y=fun(c);


if(fun(a)*fun(b)>0)
disp("Error: Function has same sign at end points")
break
end

if(y==0)
disp("c is the exact root")
break
end

if(fun(a)*y<0)
a=a;b=c;
i=i+1;
x(i)=c;
y(i)=i;
else(fun(b)*y<0)
a=c;b=b;
i=i+1;
x(i)=c;
y(i)=i;
endif

until(abs(y)<0.001)
plot(y,x);