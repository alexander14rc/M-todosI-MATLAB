function f = velocidad( x )
% Crear un programa que resuelva el problema de la ca�da libre de un cuerpo,
... mediante un programa principal y tres funciones: 
... la funci�n trapecio, Simpson 1/3 y 3/8 ,
... que permita ingresar la funci�n de ca�da del cuerpo.
g=9.8;
m=68.1;
c=12.5;
f= (g*m/c)*(1-exp(-(c/m)*x));
% Donde g=9.8m/s^2, m=68.1 kg masa del cuerpo, 
... c= coeficiente de arrastre  12.5kg/s,
... es=0.0012, se desea saber que tan lejos ha ca�do el cuerpo
... despu�s de cierto tiempo (t=10 s). la distancia [d] en [m].
... la distancia exacta es d = 289.43515 m.  
end