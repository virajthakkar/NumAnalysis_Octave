#format long;
output_precision(9);
double x=zeros(1,10)

%x(1)


x(1)=2;
x(2)=1;
%mrdivide(2,4)

for i=2:8
  x(i+1)= x(i)- fun(x(i))*mrdivide( x(i)-x(i-1) , fun(x(i))- fun(x(i-1))    );
  end
  x