#format long;
output_precision(9);
double x=zeros(1,8)

%x(1)


x(1)=2;

for i=1:7
  x(i+1)= x(i)- fun(x(i))/dfun(x(i));
  end
  x