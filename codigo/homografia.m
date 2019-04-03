%%%     Esquema de la estructura del algoritmo:

%%%         1. Abre imagen, selecciona puntos [u_i,v_i] para i=1,2,3,4. (funcion: getpts)

%%%         2. Rutina que cree la matriz A a partir de {[u_i,v_i]} y
%%%         {[X_i,Y_i]} ¿predeterminados? ¿preguntar?

%%%         3. Creamos el vector u, resolvemos el sistema h=A\u y obtenemos
%%%         la matriz de la homografía

%%%         4. Abre imagen, selecciona p1 y p2 a medir la distancia entre ellos

%%%         5. Calculamos mediante usamos A y p1,p2 para resolver los [x,y]
%%%         asociados a p1 y p2; devolvemos distancia euclidea.


%%%    RUTINA GLOBAL

archivo=input("Escribe el nombre de la foto: ", 's');
img=imread(archivo);
[u1,u2,u3,u4]=selecciona_4puntos(img);
% A=crea_matriz(u1,u2,u3,u4)



function [u1,u2,u3,u4]=selecciona_4puntos(img)
close all
imshow(img)
fig=gcf;
%[ui,vi]=getpts(fig);
u=[]
for i=1:4
    u(i)=impoint;
end
disp(u(1).getPosition);
u1=1; u2=2;u3=3;u4=4;
end





