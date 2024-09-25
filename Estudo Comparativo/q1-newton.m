clc;
clear all;
close all;

% Função para a taxa de juros
P = 35000;
A = 8500;
n = 7;
func = @(i) A * ((1 + i)^n - 1) - P * i * (1 + i)^n;

% Derivada da função para a taxa de juros
dfunc = @(i) A * n * (1 + i)^(n - 1) - P * (n * i * (1 + i)^(n - 1) + (1 + i)^n);

% Parâmetros iniciais
x0 = 0.1;
es = 0.00005;
maxit = 50;

[root, ea, iter, xr_values, ea_values] = newtonRaphson(func, dfunc, x0, es, maxit);

% Exibindo os resultados
fprintf('Raiz aproximada: %.5f\n', root);
fprintf('Erro aproximado: %.5f%%\n', ea);
fprintf('Número de iterações: %d\n', iter);

% Gerando a tabela
printf('Iteração\tRaiz Aproximada\tErro Aproximado\n');
for i = 1:iter
  printf('%d\t\t%.5f\t\t%.5f\n', i, xr_values(i), ea_values(i));
endfor

% Gerando o gráfico
figure;
plot(1:length(xr_values), xr_values, '-o');
xlabel('Iteração');
ylabel('Valor de i');
title('Convergência do Método de Newton-Raphson');
grid on;

