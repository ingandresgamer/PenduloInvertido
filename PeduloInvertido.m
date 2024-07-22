clear all
%% Parametros del Simulador
Ts=1e-3; %% [s] Paso del Integrador Numerico 
Tsim=30; %% [s] Duraciónd e la Simulación 
%% Parametros del Modelo 1
m1=0.2; %% [kg] Masa del Carro 
m2=0.1; %% [kg] Masa del Pendulo
k=0.15; %% [N/m] Costante del Resorte
l=0.2; %% [m] Longitud del del pivot al centro de masa 
g=9.81; %% [m/s^2] Gravedad
%% Condiciones iniciales
x0=[0;pi;0;0];
%% Parametros de la Perturbacion
Td=2; %% Tiempo en donde Inicia 
DeltaTd=0.25; %% Duración de la perturbación. 
Fd=0.1; %% [N] Aplitud de la fuerza de perturbación
%% Ejecuta la Simulación 
out=sim("PenduloSK.slx");
%% Graficar
figure
subplot(4,1,1)
plot(out.tout,out.x(1,:),LineWidth=2)
grid on
title('Desplazamiento del Carro')
ylabel('y(t) - [m]')
xlabel('Tiempo -[s]')
subplot(4,1,2)
plot(out.tout,(180/pi)*out.x(2,:),LineWidth=2)
grid on
title('Angulo del Pendulo')
ylabel('\theta(t) - [deg]')
xlabel('Tiempo -[s]')
subplot(4,1,3)
plot(out.tout,out.x(3,:),LineWidth=2)
grid on
title('Velocidad del Carro')
ylabel('v_y - [m/s]')
xlabel('Tiempo -[s]')
subplot(4,1,4)
plot(out.tout,(180/pi)*out.x(4,:),LineWidth=2)
grid on
title('Velocidad Angular del Pendulo')
ylabel('\omega - [deg/s]')
xlabel('Tiempo -[s]')






