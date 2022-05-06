clc
clf
i=[0,1,2,3]
x=[0,1,2,3]
y=[1,2.25,3.75,4.25]
given=[i;x;y]
disp(given)
n=length(x)
L=poly(0, 'x')
Lagrange=0 ;
for i=1:n
    Px=y(i)
    for j=1:n
        if i==j
            continue
        else
            Px = (L-x(j))/(x(i)-x(j))*Px
        end
    end
    Lagrange=Lagrange+Px
end
domain=(input("Enter the point where you want to find value - "))
val=horner(Lagrange, domain)
disp("value of function at "+string(domain)+" is "+string(val)+"")
