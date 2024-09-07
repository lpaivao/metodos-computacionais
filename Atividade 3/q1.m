clc
clear all
close all

% Definindo a função
f = @(x) sin(x) - x^2;

% Intervalo inicial
a = 0.5;
b = 1;

% Critério de parada
epsilon_s = 2; % Tolerância de 2% para o erro relativo
epsilon_a = inf; % Erro relativo aproximado inicial

% Inicialização de variáveis
prev_c = 0;
iter = 0; % Contador de iterações

% Cabeçalho para exibição
fprintf('Iteração |    a     |    b     |    c     |   f(c)   | Erro Aproximado\n');
fprintf('---------------------------------------------------------------------\n');

% Método da Bissecção
while epsilon_a > epsilon_s
    iter = iter + 1;

    % Calcular o ponto médio
    c = (a + b) / 2;

    % Calcular o valor da função em c
    fc = f(c);

    % Calcular o erro relativo aproximado
    if iter > 1
        epsilon_a = abs((c - prev_c) / c) * 100;
    end

    % Imprimir resultados da iteração atual
    fprintf('%3d      | %.5f | %.5f | %.5f | %.5f | %.5f\n', iter, a, b, c, fc, epsilon_a);

    % Determinar o próximo intervalo
    if f(a) * fc < 0
        b = c;
    else
        a = c;
    end

    % Atualizar c anterior
    prev_c = c;
end

% Resultado final
fprintf('Raiz aproximada após %d iterações: x = %.5f\n', iter, c);

