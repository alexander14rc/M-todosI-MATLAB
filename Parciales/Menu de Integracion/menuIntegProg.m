

disp('           MENU INTEGRACION      ')
disp('');
f=input('ingrese  la funcion: ');%'velocidad'
a=input('a: ');% 0
b=input('b: ');%10
es=input('Error fijado:');%0.0012
d=input('Ingrese la distancia verdadera:');%289.43515
fprintf('Escoge el metodo de Integracion\n');
fprintf('1.Trapecio\n');
fprintf('2.Simpson 1/3\n');
fprintf('3.Simpson 3/8\n');
op=input('Escoger opcion:');
n=1;
et=100;
while (op~=1)&&(op~=2)&&(op~=3)
    op=input(' Escoger nuevamente la opcion 1 , 2 o 3 : ');
end
fprintf('\nSegmentos     Tamaño de segmento     d[aprox.]      et[porcent.]\n');
while es<et
    
    if op==1 
        [h, p]=trapezoide(f,a,b,n);
        et=abs((d-p)/d)*100;
        fprintf('\n')
        fprintf('%6.0f %20.6f %18.6f %15.6f\n \n',n,h,p,et);
        n=n*2;
    elseif op==2
        
        [h, p]=simpson3(f,a,b,n);
        et=abs((d-p)/d)*100;
        fprintf('\n')
        fprintf('%6.0f %20.6f %18.6f %15.6f\n \n',n,h,p,et);
        n=n*2;
    elseif op==3
        
        [h, p]=simpson8(f,a,b,n);
        et=abs((d-p)/d)*100;
        fprintf('\n')
        fprintf('%6.0f %20.6f %18.6f %15.6f\n \n',n,h,p,et);
        n=n*3;
        
    end
end
