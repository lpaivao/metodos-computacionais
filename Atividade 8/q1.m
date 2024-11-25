clc
clear all
close all

function [x, k, Erx] = metodo_jacobi(A, b, tol, N, x0)
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
          sum += A(i,j) * x_old(j);
        end
      end
      x(i) = (b(i) - sum) / A(i,i);
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
A = [5, 1, 1; 3, 4, 1; 3, 3, 6];
b = [5; 6; 0];
x0 = [0; 0; 0];
tol = 0.05;
N = 100;

% Chama o método de Jacobi
[x, k, Erx] = metodo_jacobi(A, b, tol, N, x0)

% Exibe os resultados
disp('Solução:');
disp(x);
disp('Número de iterações:');
disp(k);
disp('Erro relativo:');
disp(Erx);

