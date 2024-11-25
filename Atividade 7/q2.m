clc
clear all
close all

function [L, U] = lu_decomposition(A)
  [n, m] = size(A);
  L = eye(n);
  U = A;

  for j = 1:n-1
    for i = j+1:n
      L(i,j) = U(i,j) / U(j,j);
      U(i,:) = U(i,:) - L(i,j) * U(j,:);
      printf('Passo %d.%d: Atualizando L e U\n', j, i);
      disp('L =');
      disp(L);
      disp('U =');
      disp(U);
    end
  end
end

function x = forward_substitution(L, b)
  [n, m] = size(L);
  x = zeros(n, 1);

  for i = 1:n
    x(i) = (b(i) - L(i,1:i-1) * x(1:i-1)) / L(i,i);
    printf('Passo %d: Substituição direta\n', i);
    disp(x);
  end
end

function x = backward_substitution(U, b)
  [n, m] = size(U);
  x = zeros(n, 1);

  for i = n:-1:1
    x(i) = (b(i) - U(i,i+1:n) * x(i+1:n)) / U(i,i);
    printf('Passo %d: Substituição retroativa\n', i);
    disp(x);
  end
end

A = [2  1 -3;
    -1  3  2;
     3  1 -3];

[L, U] = lu_decomposition(A);
b2 = [3; 1; 2];

y = forward_substitution(L, b2);
x = backward_substitution(U, y);

disp('Matriz L:')
disp(L)

disp('Matriz U:')
disp(U)

disp('Vetor solução x:')
disp(x)

