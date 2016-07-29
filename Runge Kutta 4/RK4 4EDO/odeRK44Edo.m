function dx = odeRK44Edo(t,x)
u = x(1);
v = x(2);
w = x(3);
z = x(4);
dx = [-0.5*u;4-0.3*v-0.1*u;10-0.5*v+0.25*u-0.15*w;z];
% dx = [-2*u+4*exp(-t);(-u*v^2)/3;-u*w;z];
end