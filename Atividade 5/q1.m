clc
clear all
close all

function x = gaussElimination(A, b)
    n = length(b);
    Ab = [A b]; % Matriz aumentada

    % Exibir matriz inicial
    disp('Matriz aumentada inicial:');
    disp(Ab);

    % Eliminação de Gauss
    for k = 1:n-1
        for i = k+1:n
            fator = Ab(i,k) / Ab(k,k);
            Ab(i,k:n+1) = Ab(i,k:n+1) - fator * Ab(k,k:n+1);
        end
        % Exibir matriz após eliminação na etapa k
        disp(['Matriz aumentada após eliminação na etapa ', num2str(k), ':']);
        disp(Ab);
    end

    % Substituição Recursiva
    x = zeros(n,1);
    x(n) = Ab(n,n+1) / Ab(n,n);
    disp(['x', num2str(n), ' = ', num2str(x(n))]); % Exibir o valor da última variável
    for i = n-1:-1:1
        soma = Ab(i,n+1);
        for j = i+1:n
            soma = soma - Ab(i,j) * x(j);
        end
        x(i) = soma / Ab(i,i);
        disp(['x', num2str(i), ' = ', num2str(x(i))]); % Exibir o valor de cada variável
    end
end

% Sistema de equações
A = [1 6 2 4; 3 19 4 15; 1 4 8 -12; 5 33 9 3];
b = [8; 25; 18; 72];

% Resolver o sistema sem pivotamento
x = gaussElimination(A, b);

% Exibir a solução final
disp('Solução final:');
disp(x);


