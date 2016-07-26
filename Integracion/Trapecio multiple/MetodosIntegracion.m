disp('*****************************************')
disp('         Métodos de Integración          ')
disp('*****************************************')
disp('Ingrese datos:')
a=input('a:');
b=input('b:');
n=input('Ingrese el numero de segmentos:');
f=input('Ingree la funcion: ','s');
volver='s';
while volver=='s'||volver=='S'
    disp('Elegir el metodo de integracion: ')
    fprintf('1.Trapecio\n');
    fprintf('2.Simpson 1/3\n');
    fprintf('3.Simpson 3/8\n');
    metodo=input('Elegir metodo: ');
    volver='m';
    switch metodo
        case 1
            [ I ] = Trapm( a,b,n,f );
            fprintf('\n La integral es: %2.6f \n',I);
        case 2
            [ I ] = Simp13m( a,b,n,f );
            fprintf('\n La integral es: %2.6f \n',I);
        case 3
            [ I ] = Simp38m( a,b,n,f);
            fprintf('\n La integral es: %2.6f \n',I);
        otherwise
            volver=input('Ingrese s o S para elegir de nuevo u otra tecla para salir: ','s' );
    end
end


