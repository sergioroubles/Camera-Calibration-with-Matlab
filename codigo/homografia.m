%%%     Esquema de la estructura del algoritmo:

% ----------------------------- Implementado:
%%%         1. Rutina para la configuración de los datos:
%%%             1.1 Pregunta si quieres usar los valores por defecto, si
%%%             no:
%%%             1.2 Abre imagen, selecciona puntos [u_i,v_i] para i=1,2,3,4.
%%%             1.3 Pregunta por los xi,yi (ofrece ya unos por defecto)
%%%             TODAVÏA NO ESTÁ IMPLEMENTADO, SOLO OFRECE POR DEFECTO.
%%%             1.3 Transormamos los u,v a milimetros. (1.12 µm/pixel)
%%%           

%%%         2. Rutina que cree la matriz A a partir de {[u_i,v_i]} y
%%%         {[X_i,Y_i]} ¿predeterminados? ¿preguntar?

%%%         3. Creamos el vector u, resolvemos el sistema h=A\u y obtenemos
%%%         la matriz de la homografía.

% ------------------------------ Por hacer:

%%%         4. Abre imagen, selecciona p1 y p2 a medir la distancia entre ellos

%%%         5. Calculamos mediante usamos A y p1,p2 para resolver los [x,y]
%%%         asociados a p1 y p2; devolvemos distancia euclidea.

%%
%%%    RUTINA GLOBAL

%% 1 Configuración de los datos

archivo=selecciona_archivo();


%% 2 Crea matriz 

A=crea_matriz(u)

%% 3 Crea vector vertical u y resuelve sistema. Calcula la matriz de la homografía.
u_vertical=zeros(8,1);
for i=1:4
    u_vertical(i*2)=u(i,2);
    u_vertical(i*2-1)=u(i,1);
end
h_vertical=A\u_vertical;
h=[h_vertical(1),h_vertical(2),h_vertical(3);h_vertical(4),h_vertical(5),h_vertical(6);h_vertical(7),h_vertical(8),1]

%% FUNCIONES

% Selecciona archivo o utiliza uno por defecto. Si se selecciona un archivo
% llama a la función selecciona_4puntos, si no, utiliza los valores por
% defecto.
function archivo=selecciona_archivo()
    archivo=input("Escribe el nombre de la foto (dejar en blanco toma imagen y puntos por defecto): ", 's');
    if isempty(archivo)
        archivo='Imagen_Medir.jpg';
        u=1.0e+3*[0.9215,1.7375;1.6835,1.7675;0.6935,2.7335;1.6115,2.7755];
    else
        img=imread(archivo);
        u=selecciona_4puntos(img);
    end
    
    u=1.12e-03*u;  % Transformamos de pixeles a milímetros
end

% Selecciona 4 puntos de la imagen. Hay que pulsar 4 veces y luego hacer doble click en cualquier lado
function u=selecciona_4puntos(img)
    close all
    imshow(img)
    fig=gcf;
    title("Haz doble click para salir");
    xlabel('Selecciona cuatro puntos en sentido horario empezando por el de "arriba a la izquierda" ');
    [ui,vi]=getpts(fig);
    for i=1:4
        u(i,:)=[ui(i),vi(i)]; 
    end
    close all
end         

% Crea la matriz A con valores x e y predefinidos. De momento están mal.

function A=crea_matriz(u)
x=[0,150,150,0];              % Puntos por defecto
y=[0,0,210,210];              % Puntos por defecto
Ai=zeros(2,8,4);            % Creamos los cuatro bloques

    for i=1:4
       Ai(1,1:3,i)=[x(i),y(i),1];
       Ai(2,4:6,i)=[x(i),y(i),1];
       Ai(1:2,7:8,i)=[-u(i,1)*x(i),-u(i,1)*y(i); -u(i,2)*x(i),u(i,2)*y(i)];
    end
    
A=cat(1,Ai(:,:,1),Ai(:,:,2),Ai(:,:,3),Ai(:,:,4)); % Yuxtaponemos los bloques

end