function y = gascodos(x)
% Queremos determinar el volumen  V ocupado por un gas a temperatura T y presión P.
...  La ecuación de estado (es decir, la ecuación que relaciona: P, V y T):
syms x
p=3.5*10^7;
a=0.401;
N=1000;
b=42.7*10^-6;
k=1.3806503*10^-23;
T=300;
y = (p+a*((N/x)^2))*(x-N*b)-k*N*T; 
% x = 0.04270000
end
