clear all;
n=4;
x=[2:0.1:2.4];
length(x)
f=[1.414214,1.449138,1.483240,1.516575,1.549193];

F=zeros(n+1,n+1)
F(:,1)=f;

for i=1:n
  for j=1:i
    F(i+1,j+1)= ( F(i+1,j)-F(i,j)  );
  end
end
a(1,:)=diag(F)


%y=[x;a]


fileID = fopen('newfwdout.txt','w');  
fprintf(fileID,'the coefficients are\n')
fprintf(fileID,' %6.6f\n',a);
fclose(fileID);
type newfwdout.txt

