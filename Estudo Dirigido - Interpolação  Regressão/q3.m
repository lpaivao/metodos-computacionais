clc
clear all
close all

% Dados da tabela
f = [0, 0.5, 0.8, 0.9, 0.941176, 0.961538]; % f(x)
x = [0, 1, 2, 3, 4, 5]; % x

% Regressão polinomial por mínimos quadrados (grau 3, por exemplo)
p = polyfit(f, x, 3); % Ajuste do polinômio cúbico

% Avaliar x correspondente a f(x) = 0.85
f_target = 0.85;
x_estimado = polyval(p, f_target)

% Mostrar os coeficientes do polinômio ajustado
disp('Coeficientes do polinômio ajustado (grau 3):');
disp(p);

% Plot para visualização
f_plot = linspace(0, 1, 100); % Valores de f(x) para o plot
x_plot = polyval(p, f_plot); % Avaliar polinômio para esses valores

plot(f, x, 'o', 'MarkerSize', 8, 'DisplayName', 'Dados Originais');
hold on;
plot(f_plot, x_plot, 'r-', 'DisplayName', 'Polinômio Ajustado');
xlabel('f(x)');
ylabel('x');
title('Regressão Polinomial por Mínimos Quadrados');
legend show;
grid on;


