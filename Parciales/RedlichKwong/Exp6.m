function p=Exp6(x)
% ... donde g = 9.8 m/s2. Para un paracaidista con coeficiente de
...arrastre de c = 15 kg/s, calcule la masa m de modo que la velocidad
...sea v = 35 m/s en t = 9s. Determinar m a un nivel de es = 0.1%
syms x
p=((9.8*x)/(15))*(1-exp(-(15/x)*9))-35;
end