clc;
clear all;
close all;

% Parâmetros fornecidos
Pu_max = 80000;
ku = 0.05;
Pu_min = 110000;
Ps_max = 320000;
Po = 10000;
ks = 0.09;

% Função para a diferença entre Ps(t) e 1.2 * Pu(t)
func = @(t) Ps_max / (1 + (Ps_max / Po - 1) * exp(-ks * t)) - 1.2 * (Pu_max * exp(-ku * t) + Pu_min);

% Parâmetros iniciais
xl = 0;
xu = 10;
es = 0.00005;
maxit = 50;

[root, ea, iter, xr_values, ea_values] = falsePosition(func, xl, xu, es, maxit);

% Exibindo os resultados
fprintf('Raiz aproximada (tempo t): %.5f\n', root);
fprintf('Erro aproximado: %.5f%%\n', ea);
fprintf('Número de iterações: %d\n', iter);

% Calculando os valores de Pu(t) e Ps(t) no tempo encontrado
Pu_t = Pu_max * exp(-ku * root) + Pu_min;
Ps_t = Ps_max / (1 + (Ps_max / Po - 1) * exp(-ks * root));

fprintf('População urbana Pu(t): %.5f\n', Pu_t);
fprintf('População suburbana Ps(t): %.5f\n', Ps_t);

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
