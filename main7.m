% Llamar al ODE (Convertidor CD-CD)
tspan = [0 10];
x0 = [0; 0];

[t,x] = ode45(@dinamica7, tspan, x0);

% Gráfica
figure
plot(t,x(:,2),'LineWidth',1.2)
grid on
xlabel('Tiempo (s)')
ylabel('\omega')
title('Motor de corriente continua')
