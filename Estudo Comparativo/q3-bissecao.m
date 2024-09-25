clc;
clear all;
close all;

% Função para a força
q = 2e-5;
Q = 2e-5;
a = 0.85;
F = 1.25;
epsilon_0 = 8.9e-12;
func = @(x) (1 / (4 * pi * epsilon_0)) * (q * Q * x / (x^2 + a^2)^(3/2)) - F;

% Parâmetros iniciais
xl = 0.01;
xu = 1;
es = 0.00005;
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
ylabel('Valor de x');
title('Convergência do Método da Bisseção');
grid on;

