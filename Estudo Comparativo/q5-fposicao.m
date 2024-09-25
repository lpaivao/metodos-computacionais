clc;
clear all;
close all;

% Parâmetros fornecidos
u = 1800; % velocidade de exaustão do combustível em m/s
m0 = 160000; % massa inicial do foguete em kg
q = 2600; % taxa de consumo do combustível em kg/s
g = 9.81; % aceleração da gravidade em m/s^2
v = 750; % velocidade desejada em m/s

% Função para a diferença entre a velocidade calculada e a velocidade desejada
func = @(t) u * log((m0 - q * t) / m0) - g * t - v;

% Parâmetros iniciais
xl = 10;
xu = 50;
es = 0.01; % Critério de parada de 1%
maxit = 50;

[root, ea, iter, xr_values, ea_values] = falsePosition(func, xl, xu, es, maxit);

% Exibindo os resultados
fprintf('Raiz aproximada (tempo t): %.5f\n', root);
fprintf('Erro aproximado: %.5f%%\n', ea);
fprintf('Número de iterações: %d\n', iter);

% Gerando a tabela
printf('Iteração\tLimite Inferior\tLimite Superior\tRaiz Aproximada\tErro Aproximado\n');
for i = 1:iter
  printf('%d\t\t%.5f\t\t%.5f\t\t%.5f\t\t%.5f\n', i, xl, xu, xr_values(i), ea_values(i));
endfor

% Gerando o gráfico
figure;
plot(1:length(xr_values), xr_values, '-o');
xlabel('Iteração');
ylabel('Valor de t');
title('Convergência do Método da Falsa Posição');
grid on;
