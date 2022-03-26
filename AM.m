clc;
clear all;
close all;
t=0:0.001:1;
set(0,'defaultlinelinewidth',2);
A=5;%Amplitud de señal
fm=input('Frecuencia de Moduladora=');%Introduciendo valor de frecuancia de mensaje (f1)
fc=input('Frecuancia de Portadora=');%Introduciendo valor de portadora (carrier)(f2) (f2>f1)
mi=input('Indice de Modulacion=');%Indice de modulacion
Sm=A*sin(2*pi*fm*t);%Señal de mensaje
subplot(3,1,1);%La grafica se divide en 3 columnas para muestreo 
plot(t,Sm);
xlabel('Tiempo');
ylabel('Amplitud');
title('Señal Moduladora');
grid on;
Sc=A*sin(2*pi*fc*t);%Señal de portadora
subplot(3,1,2);
plot(t,Sc);
xlabel('Tiempo');
ylabel('Amplitud');
title('Señal Portadora');
grid on;
Sfm=(A+mi*Sm).*sin(2*pi*fc*t);%Señal AM, Amplitud de la portadora cambia a (A+Mensaje)
subplot(3,1,3);
plot(t,Sfm);
xlabel('Tiempo');
ylabel('Amplitud');
title('Señal AM');
grid on;