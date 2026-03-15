% Función dinámica (Motor corriente continua)
function dx = dinamica7(t,x)

%Parámetros
R = 2;
K = 0.01;   
b = 0.0012;       
L = 0.023; 
J = 0.001;
V = 5;

dx = zeros(2,1);

% Nuevas variables
IL = x(1);      % dIL = dx(1)
w = x(2);       % dx = dx(2)

% Espacios de estado
dx(1) = (V/L) - (x(1)*R)/L - (K*x(2)/L);
dx(2) = -(b*w)/J + (K*x(1))/J;

end