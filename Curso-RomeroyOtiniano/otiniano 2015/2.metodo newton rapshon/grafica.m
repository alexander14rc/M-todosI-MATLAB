clc
clear all
close all
x=linspace(-5,5,100)
f=x.^5-6;
plot(x,f,'r')
hold on
plot([-5,5],[0,0],'b')
grid on
xlabel('ejex')
ylabel('ejey')
title('grafico de la funcion')