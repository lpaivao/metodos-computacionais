clc
clear all
close all

% Método da Falsa Posição para encontrar a raiz de f(x)

% Definindo a função
f = @(x) x^3 - 9*x + 3;

% Intervalo inicial
a = 0;
b = 1;

% Critério de parada
epsilon_s = 5e-4; % Tolerância para o erro relativo aproximado
epsilon_a = inf; % Erro aproximado inicial

% Guardando os valores da iteração anterior para o cálculo do erro
xr_prev = 0;
iter = 0; % Contador de iterações

% Saída de Cabeçalho
fprintf('Iter |    a      |    b      |   xr      |  f(xr)    |  Epsilon_a  \n');
fprintf('-----------------------------------------------------------------\n');

% Loop do método da falsa posição
while epsilon_a > epsilon_s
    iter = iter + 1;

    % Calcula a raiz aproximada usando a fórmula da falsa posição
    xr = b - (f(b) * (a - b)) / (f(a) - f(b));

    % Calcular o erro relativo aproximado
    if iter > 1
        epsilon_a = abs((xr - xr_prev) / xr) * 100;
    end

    % Exibir os resultados da iteração atual
    fprintf('%3d  |  %.5f  |  %.5f  |  %.5f  |  %.5f  |  %.5f  \n', iter, a, b, xr, f(xr), epsilon_a);

    % Determinar o próximo intervalo
    if f(a) * f(xr) < 0
        b = xr;
    else
        a = xr;
    end

    % Guardar a raiz atual para o cálculo do erro na próxima iteração
    xr_prev = xr;
end

% Exibir o resultado final
fprintf('Raiz aproximada: x = %.5f após %d iterações\n', xr, iter);

