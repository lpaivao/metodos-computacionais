clc
clear all
close all

% Função para o volume
r = 1;
rho_s = 200;
rho_w = 1000;
func = @(h) (pi * h^2 / 3) * (3 * r - h) - (rho_s / rho_w) * (4/3 * pi * r^3);

% Derivada da função
dfunc = @(h) pi * h * (2 * r - h);

% Parâmetros iniciais
x0 = 0.5;
es = 0.00005;
maxit = 50;

[root, ea, iter, xr_values, ea_values] = newtonRaphson(func, dfunc, x0, es, maxit)

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
ylabel('Valor de h');
title('Convergência do Método de Newton-Raphson');
grid on;
