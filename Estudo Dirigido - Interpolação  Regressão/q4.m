clc
clear all
close all

% Dados fornecidos
x = [0 2 4 6 9 11 12 15 17 19]';
y = [5 6 7 6 9 8 8 10 12 12]';

% Regressão linear direta (y = ax + b)
X = [ones(size(x)), x]; % Matriz com termos independentes e x
coeficientes_diretos = X \ y; % Resolução de mínimos quadrados
a = coeficientes_diretos(2);
b = coeficientes_diretos(1);

% Estimativa de y para o modelo
y_estimado = X * coeficientes_diretos;

% Erro padrão da estimativa
residuos = y - y_estimado;
erro_padrao_estimativa = sqrt(sum(residuos.^2) / (length(y) - 2));

% Coeficiente de correlação
media_y = mean(y);
SST = sum((y - media_y).^2);
SSE = sum(residuos.^2);
R2 = 1 - SSE / SST;
r = sqrt(R2); % Coeficiente de correlação

% Exibição dos resultados diretos
fprintf('Regressão Linear Direta (y = ax + b):\n');
fprintf('Coeficiente angular (a): %.4f\n', a);
fprintf('Intercepto (b): %.4f\n', b);
fprintf('Erro padrão da estimativa: %.4f\n', erro_padrao_estimativa);
fprintf('Coeficiente de correlação (r): %.4f\n\n', r);

% Plot da regressão linear direta
figure;
plot(x, y, 'bo', 'MarkerFaceColor', 'b'); hold on;
plot(x, y_estimado, 'r-', 'LineWidth', 2);
title('Regressão Linear Direta: y = ax + b');
xlabel('x');
ylabel('y');
legend('Dados originais', 'Ajuste Linear');
grid on;
hold off;

% Regressão inversa (x = cy + d)
Y_inv = [ones(size(y)), y]; % Matriz com termos independentes e y
coeficientes_inversos = Y_inv \ x; % Resolução de mínimos quadrados para inversa
c = coeficientes_inversos(2);
d = coeficientes_inversos(1);

% Estimativa de x para o modelo inverso
x_estimado_inv = Y_inv * coeficientes_inversos;

% Exibição dos resultados inversos
fprintf('Regressão Inversa (x = cy + d):\n');
fprintf('Coeficiente angular inverso (c): %.4f\n', c);
fprintf('Intercepto inverso (d): %.4f\n\n', d);

% Plot da regressão inversa
figure;
plot(y, x, 'bo', 'MarkerFaceColor', 'b'); hold on;
plot(y, x_estimado_inv, 'g-', 'LineWidth', 2);
title('Regressão Inversa: x = cy + d');
xlabel('y');
ylabel('x');
legend('Dados originais', 'Ajuste Linear Inverso');
grid on;
hold off;



