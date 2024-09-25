clc;
clear all;
close all;

% Parâmetros fornecidos
r = 1; % raio da esfera em metros
rho_s = 200; % densidade da esfera em kg/m^3
rho_w = 1000; % densidade da água em kg/m^3

% Função para a diferença entre o volume da porção da esfera acima da água e o volume deslocado
func = @(h) (pi * h^2 / 3) * (3 * r - h) - (rho_s / rho_w) * (4/3 * pi * r^3);

% Parâmetros iniciais
xl = 0.01;
xu = 2*r; % altura máxima pode ser o diâmetro da esfera
es = 0.00005;
maxit = 50;

[root, ea, iter, xr_values, ea_values] = falsePosition(func, xl, xu, es, maxit);

% Exibindo os resultados
fprintf('Raiz aproximada (altura h): %.5f\n', root);
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
ylabel('Valor de h');
title('Convergência do Método da Falsa Posição');
grid on;
