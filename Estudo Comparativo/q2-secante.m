clc;
clear all;
close all;

% Função para o crescimento populacional
Pu_max = 80000;
ku = 0.05;
Pu_min = 110000;
Ps_max = 320000;
Po = 10000;
ks = 0.09;

func = @(t) Pu_max * exp(-ku * t) + Pu_min - 1.2 * (Ps_max / (1 + (Ps_max / Po - 1) * exp(-ks * t)));

% Parâmetros iniciais
x0 = 0;
x1 = 10;
es = 0.00005;
maxit = 50;

[root, ea, iter, xr_values, ea_values] = secant(func, x0, x1, es, maxit)

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
ylabel('Valor de t');
title('Convergência do Método da Secante');
grid on;

