clc
clear all
close all

% Função para a velocidade do foguete
u = 1800;
m0 = 160000;
q = 2600;
g = 9.81;
v = 750;
func = @(t) u * log((m0 - q * t) / m0) - g * t - v;

% Parâmetros iniciais
x0 = 10;
x1 = 50;
es = 0.01; % Critério de parada de 1%
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
