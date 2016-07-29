function v=Exp3(x)
%Suponga que la fuerza hacia arriba de la resistencia del aire
...sobre un objeto que cae es proporcional al cuadrado de la velocidad.
...Para este caso, la velocidad se calcula con
v=sqrt((9.8*68.1)/(0.25))*tanh(sqrt((9.8*0.25)/(68.1))*x);
% donde cd = coeficiente de arrastre de segundo orden. 
... a) Si g = 9.8 m/s2, m = 68.1 kg y cd = 0.25 kg/m, use integraci�n anal�tica
... para determinar qu� tan lejos cae el objeto en 10 segundos. b)
... Haga lo mismo, pero eval�e la integral con la regla del trapecio
... de segmento m�ltiple. Use una n suficientemente grande para
... obtener tres d�gitos significativos de exactitud.
end