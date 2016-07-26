function dx = odeRK43Edo(t,x)
u = x(1);
v = x(2);
w = x(3);
dx = [-2*u+4*exp(-t);(-u*v^2)/3;-u*w];
end