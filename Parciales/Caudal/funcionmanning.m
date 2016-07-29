function r =funcionmanning( x )
syms x
s=0.0008;
Q=90;
z=1.5;
b=6;
n=0.016;
A=(b+z*x)*x;
P=b+2*x*sqrt(1+z^2);
r=(A^(5/3)*(s^0.5))/((P^(2/3))*n)-Q;
end