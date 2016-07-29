fprintf('\n Corrimetes M1,M2,M3,M4 \n')
a = input('Ingrese la matriz de coeficiientes A='); %[0.17 0.39 0.21; 0.83 0 0.55; 0 0.61 0.24] verificar los cambios del examen.
b = input('Ingrese la matriz de los terminos independientes B=');%[210 590 200]
tol = 0.0001;
[a,b,x,f] = gauss(a,b,tol);
fprintf('\n suponemos que la masa final M4 es 1000kg \n')
M4 = 1000;
fprintf('\n Soluciones \n')
fprintf('\n M1 = %2.7f Kg\n',x(1))
fprintf('\n M2 = %2.7f Kg\n',x(2))
fprintf('\n M3 = %2.7f Kg\n',x(3))
fprintf('\n M4 = %2.7f Kg\n',M4)