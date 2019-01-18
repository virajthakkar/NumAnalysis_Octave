a=0;
%a=input(" Enter the lower limit of integration a= ");
b=1;
%b=input("\n Enter the upper limit of integration b= ");
#n=input("\n Enter  the number of intervals between a and b, n=");
n=3; #3/8th Rule
X=zeros(1,n+1);
h =(b-a)/n; %small interval width
for i=1:n+1
  X(i)=a+((i-1)*h);
endfor
% n+1 number of Xi for n number of intervals.
X
Y=zeros(1,length(X));
for i=1:length(X)
  Y(i)=X(i)^3; %change function if needed
endfor
Y
I=0;
for j = 1:length(X)
  %j;
    lj=lpol(X,j);
    c=polyint(lj);
    wj=polyval(c,X(n+1)) - polyval(c,X(1));
    I = I +  wj* Y(j);
endfor
printf("The value of integral is \n")
I
