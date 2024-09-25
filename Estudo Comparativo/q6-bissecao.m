clc
clear all
close all

% Função para a profundidade crítica
Q = 20;
g = 9.81;
func = @(y) 1 - (Q^2 / (g * (3 * y + y^2 / 2)^3 * (3 + y)));

% Parâmetros iniciais
xl = 0.01;
xu = 5;
es = 0.01; % Critério de parada de 1%
maxit = 50;

[root, ea, iter, xr_values, ea_values] = bisection(func, xl, xu, es, maxit)

% Exibindo os resultados
fprintf('Raiz aproximada: %.5f\n', root);
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
ylabel('Valor de y');
title('Convergência do Método da Bisseção');
grid on;
