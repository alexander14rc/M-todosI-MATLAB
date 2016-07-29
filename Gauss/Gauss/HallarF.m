% copiar y pegar al programa PrincipalGauss para hallar F
F=eye(n);
F(2,1)=f(1);
k=1;m=2;
j=1+k;
x=1+m;
for i =3:n
    F(i,1:i-1)=f(j:x);
    k=k+1;
    m=m+1;
    j=j+k;
    x =x+m;
end
fprintf('\n La matriz F es:\n')
fprintf('\n')
disp(F)