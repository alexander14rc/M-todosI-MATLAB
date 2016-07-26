disp('*****************************************')
disp('         Métodos de Integración          ')
disp('*****************************************')

disp('Elegir el metodo de integracion: ')
fprintf('1.Trapecio\n');
fprintf('2.Simpson 1/3\n');
fprintf('3.Simpson 3/8\n');
fprintf('4.Romberg \n');
metodo=input('Elegir metodo: ');
while (metodo~=1)&&(metodo~=2)&&(metodo~=3)&&(metodo~=4)
    metodo=input(' Escoger nuevamente la opcion 1 , 2 o 3 : ');
end
switch metodo
    case 1
        disp('         Método de trapecio         ')
        disp('Ingrese datos:')
        f=input('Ingree la funcion: ');
        a=input('a:');
        b=input('b:');
        n=input('Ingrese el numero de segmentos:');
        [p] = trapezoide(f,a,b,n);
        fprintf('\n')
        fprintf('la integral es: %f \n',p);
        Et=(2.39*(10)^-11)*p;
        fprintf('\n E(t)= 2.39*(10)^(-11)*I= %f \n',Et)
    case 2
        disp('         Método de Simpsom1/3         ')
        disp('Ingrese datos:')
        f=input('Ingree la funcion: ');
        a=input('a:');
        b=input('b:');
        n=input('Ingrese el numero de segmentos:');
        [p]=simpson3( f,a,b,n);
        fprintf('\n')
        fprintf('la integral es: %f \n',p);
        Et=(2.39*(10)^-11)*p;
        fprintf('\n E(t)= 2.39*(10)^(-11)*I= %f \n',Et)
    case 3
        disp('         Método de Simpsom3/8         ')
        disp('Ingrese datos:')
        f=input('Ingree la funcion: ');
        a=input('a:');
        b=input('b:');
        n=input('Ingrese el numero de segmentos:');
        [ p]=simpson8( f,a,b,n);
        fprintf('\n')
        fprintf('la integral es: %f \n',p);
        Et=(2.39*(10)^-11)*p;
        fprintf('\n E(t)= 2.39*(10)^(-11)*I= %f \n',Et)
        
    case 4
        disp('         Método Romberg     ')
        disp('Ingrese datos: ')
        f=input('ingrese  la funcion: ');
        a=input('a: ');
        b=input('b: ');
        imax=input('ingrese la iteracion maxima:');
        es=input('ingrese el error fijado:');
        [I]=Romberg( a,b,imax,es,f);
        fprintf('\n')
        fprintf('la integral es: %f \n',I);
        fprintf('\n')
        Et=(2.39*(10)^-11)*I;
        fprintf('\n E(t)= 2.39*(10)^(-11)*I= %f \n',Et)
        
end
