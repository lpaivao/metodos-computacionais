clc;
clear all;
close all;

% Parâmetros fornecidos
Q = 20; % vazão em m^3/s
g = 9.81; % aceleração da gravidade em m/s^2

% Função g(y) para a iteração linear
gfunc = @(y) ((Q^2 / (g * (3 * y + y^2 / 2)^3 * (3 + y))) + 1);

% Parâmetros iniciais
y0 = 1; % valor inicial
es = 0.01; % critério de parada de 1%
maxit = 50;

[root, ea, iter, xr_values, ea_values] = fixedPointIteration(gfunc, y0, es, maxit);

% Exibindo os resultados
fprintf('Raiz aproximada (profundidade crítica y): %.5f\n', root);
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
ylabel('Valor de y');
title('Convergência do Método da Iteração Linear');
grid on;
