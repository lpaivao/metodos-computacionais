clc;
clear all;
close all;

% Valor de x
x = 0.5;

% Valor verdadeiro de e^0.5 (usado para comparação)
valor_verdadeiro = 1.648721;

% Inicializa a série com o primeiro termo (1)
soma = 1;

% Erro relativo percentual aproximado inicial (grande para garantir a execução)
erro_aproximado = inf;

% Critério de erro para 3 algarismos significativos
epsilon_s = 0.05;

% Inicializa o contador de termos
n = 1;

% Exibição de cabeçalho
fprintf('Termo |    Soma       | Erro Verdadeiro | Erro Aproximado\n');
fprintf('----------------------------------------------------------\n');

% Calcula os termos adicionais da série até que o erro seja aceitável
while abs(erro_aproximado) > epsilon_s
    % Calcula o próximo termo da série
    termo = x^n / factorial(n);

    % Adiciona o termo à soma
    soma = soma + termo;

    % Calcula o erro verdadeiro
    erro_verdadeiro = valor_verdadeiro - soma;

    % Calcula o erro relativo percentual aproximado
    erro_aproximado = (termo / soma) * 100;

    % Exibe os resultados para o termo atual
    fprintf('%4d  | %.8f | %.10f | %.5f%%\n', n, soma, erro_verdadeiro, erro_aproximado);

    % Incrementa o contador de termos
    n = n + 1;
end

% Exibe o resultado final
fprintf('\nAproximação final: e^0.5 = %.8f\n', soma);
fprintf('Erro verdadeiro final: %.10f\n', erro_verdadeiro);
fprintf('Erro aproximado final: %.5f%%\n', erro_aproximado);

