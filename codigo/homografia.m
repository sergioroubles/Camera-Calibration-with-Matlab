%%%     Esquema de la estructura del algoritmo:


%%%         1. Configuraci�n de los datos
%%%             1.1 Abre imagen, selecciona puntos [u_i,v_i] para i=1,2,3,4. (funcion: getpts)
%%%             1.2 Pregunta por los xi,yi (ofrece ya unos por defecto)
%%%             1.3 Transormamos los u,v a milimetros.

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
disp(u1);
% A=crea_matriz(u1,u2,u3,u4)



function [u1,u2,u3,u4]=selecciona_4puntos(img)
    close all
    imshow(img)
    fig=gcf;
    [ui,vi]=getpts(fig);
    u1=[ui(1),vi(1)]; 
    u2=[ui(2),vi(2)];
    u3=[ui(3),vi(3)];
    u4=[ui(4),vi(4)];
end

function A=crea_matriz(u1,u2,u3,u4)
    for i=1:4
       Ai(i)=zeros(2,8) 
        
    end



end