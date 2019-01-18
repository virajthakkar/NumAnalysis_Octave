printf("Lagrange's Interpolation method\n");
#v=conv([1],[1,-3]);
#t=conv(v,[1,-2]);
#polyval(t,2)  

X=[1,2,3,4];
%X=[0,-1,1];


%use the below line to enter data points
%X=input("Enter x_i values enclosed in [ ] brackets and seperated by a space \n");
n=length(X);

%please change the funtion below if needed
Y=X.^3
%OR input yi values manually 
%Y=input("Enter x_i values enclosed in [ ] brackets and seperated by a space \n");

%Y=[1,2,3];
%lpol(X,2)
#poly2sym is unfortunately not working on my laptop 
printf("The lag poly is given as \n");
Lagpol = [0];
for i = 1:n
    Lagpol = Lagpol + lpol(X, i) * Y(i);
end

Lagpol

x_eval = min(X):0.1:max(X);
y_eval = polyval(Lagpol,x_eval);
plot(x_eval,y_eval); 
hold on;
plot(X,Y,'r*'),xlabel('x'), ylabel('y(x)'), title('Interpolation polynomial plot'),legend( 'Lagrange poly','data points');





