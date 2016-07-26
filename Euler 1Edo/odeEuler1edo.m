function  dx = odeEuler1edo(t,x)
u = x(1);
dx = 9.81-(0.27/70)*u^2;
end