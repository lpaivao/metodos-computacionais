clc;
clear all;
close all;

% Define a função f(x)
f = @(x) -0.1*x.^4 - 0.15*x.^3 - 0.5*x.^2 - 0.25*x + 1.2;

% Define a derivada exata de f(x) calculada analiticamente
f_prime_exact = @(x) -0.4*x.^3 - 0.45*x.^2 - 1.0*x - 0.25;

% Ponto em que queremos calcular a derivada
x = 0.5;

% Valor exato da derivada em x = 0.5
valor_verdadeiro = f_prime_exact(x);

% Inicializa o tamanho do passo e outros parâmetros
h = 1;
n = 10; % Número de passos
resultados = zeros(n, 3); % Para armazenar os resultados

% Loop para calcular a diferença finita para vários tamanhos de h
for i = 1:n
    % Calcula a diferença centrada
    diferenca_finita = (f(x + h) - f(x - h)) / (2*h);

    % Calcula o erro verdadeiro
    erro_verdadeiro = abs(valor_verdadeiro - diferenca_finita);

    % Armazena os resultados
    resultados(i, :) = [h, diferenca_finita, erro_verdadeiro];

    % Exibe os resultados da iteração atual
    fprintf('Passo h: %.10f | Diferença Finita: %.10f | Erro Verdadeiro: %.10f\n', h, diferenca_finita, erro_verdadeiro);

    % Divide o tamanho do passo por 10
    h = h / 10;
end

% Exibe a tabela de resultados
fprintf('\nTamanho do passo | Diferença Finita | Erro Verdadeiro\n');
disp(resultados);

% Traça o gráfico do erro em função do tamanho do passo
figure;
loglog(resultados(:, 1), resultados(:, 3), '-o');
xlabel('Tamanho do Passo (h)');
ylabel('Erro Verdadeiro');
title('Erro Verdadeiro x Tamanho do Passo');
grid on;

