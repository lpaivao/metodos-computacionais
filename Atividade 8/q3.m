clc
clear all
close all

function [x, k, Erx] = metodo_sor(A, b, tol, N, x0, omega)
  % Inicializações
  [n, ~] = size(A);
  x = x0;
  Erx = inf;
  k = 0;

  % Iterações
  while k < N && max(Erx) > tol
    x_old = x;
    for i = 1:n
      sum = 0;
      for j = 1:n
        if j ~= i
          sum += A(i,j) * x(j);
        end
      end
      x_new = (b(i) - sum) / A(i,i);
      x(i) = omega * x_new + (1 - omega) * x(i);
    end

    % Calcula Erro Relativo
    Erx = abs((x - x_old) ./ x) * 100;
    k++;
  endwhile

  % Verificação de Convergência
  if max(Erx) > tol
    warning('O método não convergiu');
  endif
endfunction

% Dados do problema
A = [-3, 12; 10, -2];
b = [9; 8];
x0 = [0; 0];
tol = 0.1;
N = 100;
omega = 1.5;  % Exemplo de valor de relaxamento

% Chama o método de SOR
[x, k, Erx] = metodo_sor(A, b, tol, N, x0, omega)

% Exibe os resultados
disp('Solução:');
disp(x);
disp('Número de iterações:');
disp(k);
disp('Erro relativo:');
disp(Erx);

