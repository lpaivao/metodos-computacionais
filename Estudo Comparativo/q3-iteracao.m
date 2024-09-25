clc;
clear all;
close all;

% Parâmetros fornecidos
q = 2e-5;
Q = 2e-5;
a = 0.85;
F = 1.25;
epsilon_0 = 8.9e-12;

% Função g(x) para a iteração linear
gfunc = @(x) ((4 * pi * epsilon_0 * F * (x^2 + a^2)^(3/2)) / (q * Q))^(1/2);

% Parâmetros iniciais
x0 = 0.5;
es = 0.00005;
maxit = 50;

[root, ea, iter, xr_values, ea_values] = fixedPointIteration(gfunc, x0, es, maxit);

% Exibindo os resultados
fprintf('Raiz aproximada (distância x): %.5f\n', root);
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
ylabel('Valor de x');
title('Convergência do Método da Iteração Linear');
grid on;
