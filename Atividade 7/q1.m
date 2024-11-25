clc
clear all
close all

function [A] = gauss_jordan(A)
  [n, m] = size(A);
  for j = 1:n
    A(j,:) = A(j,:) / A(j,j);
    printf('Passo %d: Transformar pivô em 1\n', j);
    disp(A);
    for i = [1:j-1 j+1:n]
      A(i,:) = A(i,:) - A(i,j) * A(j,:);
      printf('Passo %d.%d: Zerando elemento (%d,%d)\n', j, i, i, j);
      disp(A);
    end
  end
end

A = [-0.04  0.04  0.12  3;
      0.56 -1.56  0.32  1;
     -0.24  1.24 -0.28  0];

A = gauss_jordan(A);

disp('Matriz final:')
disp(A)

