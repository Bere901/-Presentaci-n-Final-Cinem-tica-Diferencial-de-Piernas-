%Limpieza de pantalla
clear all
close all
clc

%Calculamos las matrices de transformación homogénea
H0=SE3; %Inicializamos el punto de origen 
H1=SE3(rotz(pi), [3 0 0]); %Inicia 0 prima para completar el ejercicio
H2=SE3(roty(pi/2), [0 0 0]); %0 a 1 final
H3=SE3(rotx(5/6*pi), [-2 0 0]); %1 prima 1 final 

H20= H1*H2;
H30= H20*H3; %Matriz de transformación homogenea global de 3 a 0 

x=[0 3 3 0 0 0     0     0 0     3];
y=[0 0 0 0 0 5.196 5.196 0 5.196 0];
z=[0 0 2 2 0 0     2     2 2     2];

plot3(x, y, z,'LineWidth', 1.5); axis([-1 5 -10 5 -1 10]); grid on;
hold on;

%Graficamos la trama absoluta o global 
trplot(H0,'rgb','axis', [-1 6 -1 8 -1 4])

%Realizamos una animación para la siguiente trama
pause;
tranimate(H0, H1,'rgb','axis', [-1 6 -1 8 -1 4])
%Realizamos una animación para la siguiente trama
 pause;
 tranimate(H1, H2,'rgb','axis', [-1 6 -1 8 -1 4])
% %Realizamos una animación para la siguiente trama
 pause;
 tranimate(H20, H30,'rgb','axis', [-1 6 -1 8 -1 4])
 disp(H30)