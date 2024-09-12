clc
clear all
close all

function y = f(x)
    y = x^2 - 3*x + exp(x) - 2;
end

function y = df(x)
    y = 2*x - 3 + exp(x);
end

function x_next = g(x)
    x_next = (3*x - exp(x) + 2)^(1/2);  % Exemplo de rearranjo
end

function iteracao_linear(x0, tol, max_iter)
    iter = 0;
    xr = x0;
    ea = Inf;

    fprintf('Iter\tXr\t\tf(Xr)\t\tEa\n');  % Cabeçalho da tabela de saída

    while (ea > tol && iter < max_iter)
        xrant = xr;
        xr = g (xrant);
        ea = abs((xr - xrant)/xr) * 100;
        iter = iter + 1;
        fprintf('%d\t%.6f\t%.6f\t%.6f%%\n', iter, xr, f(xr), ea);  % Exibe os resultados
    end

    if ea <= tol
        fprintf('Raiz aproximada encontrada: %.6f em %d iterações\n', xr, iter);
    else
        fprintf('Método falhou em %d iterações\n', iter);
    end
end


function newton_raphson(x0, tol, max_iter)
    iter = 0;
    xr = x0;
    ea = Inf;

    fprintf('Iter\tXr\t\tf(Xr)\t\tEa\n');  % Cabeçalho da tabela de saída

    while (ea > tol && iter < max_iter)
        x_next = xr - f(xr)/df(xr);
        ea = abs((x_next - xr)/x_next) * 100;
        xr = x_next;
        iter = iter + 1;
        fprintf('%d\t%.6f\t%.6f\t%.6f%%\n', iter, xr, f(xr), ea);  % Exibe os resultados
    end

    if ea <= tol
        fprintf('Raiz aproximada encontrada: %.6f em %d iterações\n', xr, iter);
    else
        fprintf('Método falhou em %d iterações\n', iter);
    end
end


function secante(x0, x1, tol, max_iter)
    iter = 0;
    ea = Inf;

    fprintf('Iter\tXr\t\tf(Xr)\t\tEa\n');  % Cabeçalho da tabela de saída

    while (ea > tol && iter < max_iter)
        xr = x1 - (f(x1) * (x1 - x0)) / (f(x1) - f(x0));
        ea = abs((xr - x1)/xr) * 100;
        x0 = x1;
        x1 = xr;
        iter = iter + 1;
        fprintf('%d\t%.6f\t%.6f\t%.6f%%\n', iter, xr, f(xr), ea);  % Exibe os resultados
    end

    if ea <= tol
        fprintf('Raiz aproximada encontrada: %.6f em %d iterações\n', xr, iter);
    else
        fprintf('Método falhou em %d iterações\n', iter);
    end
end


x0 = 0;  % Ponto inicial
x1 = 1;  % Apenas para a secante
tol = 1e-4;  % Tolerância
max_iter = 100;  % Máximo de iterações

% Método da Iteração Linear
iteracao_linear(x0, tol, max_iter);

% Método de Newton-Raphson
newton_raphson(x0, tol, max_iter);

% Método da Secante
secante(x0, x1, tol, max_iter);
