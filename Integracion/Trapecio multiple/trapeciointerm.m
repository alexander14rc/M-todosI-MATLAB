%****************************************************************
%** Calculo de la integral por el                              **
%** Metodo trapecial de multiples                              **
%** Segmentos                                             UdeG **
%**                                    Maestria en Electronica **
%** Ing. Jesus Norato Valencia                                 **
%** Materia: Metodos Numericos                                 **
%** Maestro: M.C. J.Gilberto Mateos Suarez           18/Nov/99 **
%****************************************************************
clear all;
close all;
clc;
fprintf('Calculo de la integral por el metodo trapecial\n\n');
f=input('introduce la funcion:','s');
a=input('lime inferior:');
b=input('limite superior:');
n=input('numero de segmentos a dividir:');
h=(b-a)/n;
z=0;
%*****************************************************************
%** En la siguiente seccion se                                 **
%** realizan los calculos de las areas de cada trapecio ademas **
%** se realiza la suma de estas                                **
%*****************************************************************
for x=a:h:b
    k=eval(f);
    if x==a,d=k; 
    end
    if x==b,e=k;  
    end
    z=z+k;
end
%*****************************************************************
%** una vez que se tienen los datos de areas de los trapecios    **
%** cantidad de trapecios, Limites superior e inferior se re-    **
%** alizan las operaciones directamente en la formula de inte-   **
%** gracion por el metodo trapecial.                             **
%*****************************************************************
z=z-d-e;
z=z*2;
z=z+d+e;
z=z/(2*n);
z=z*(b-a)
fprintf('\n Resultado \n');