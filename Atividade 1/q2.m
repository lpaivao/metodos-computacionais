clc
clear all
close all

function [result, finalError] = babylonianSqrt(a, epsilon)
    % Verificar se 'a' é negativo
    if a < 0
        isImaginary = true;
        a = abs(a);
    else
        isImaginary = false;
    end

    % Estimativa inicial para x
    if a == 0
        result = 0;
        finalError = 0;
        return;
    else
        xOld = a;  % Pode-se usar outra estimativa inicial
    end

    while true
        % Método babilônico
        xNew = (xOld + a / xOld) / 2;

        % Calcular o erro relativo
        relativeError = abs((xNew - xOld) / xNew);

        % Verificar se o erro é menor ou igual à tolerância
        if relativeError <= epsilon
            break;
        end

        % Atualizar x para o próximo ciclo
        xOld = xNew;
    end

    % Ajustar o resultado se for imaginário
    if isImaginary
        result = xNew * 1i;
    else
        result = xNew;
    end

    finalError = relativeError;
end

% Teste com a = 0
[sqrt0, error0] = babylonianSqrt(0, 1e-4);
fprintf('Raiz quadrada de 0: %f com erro de %f\n', sqrt0, error0);

% Teste com a = 2
[sqrt2, error2] = babylonianSqrt(2, 1e-4);
fprintf('Raiz quadrada de 2: %f com erro de %f\n', sqrt2, error2);

% Teste com a = 10
[sqrt10, error10] = babylonianSqrt(10, 1e-4);
fprintf('Raiz quadrada de 10: %f com erro de %f\n', sqrt10, error10);

% Teste com a = -4
[sqrtNeg4, errorNeg4] = babylonianSqrt(-4, 1e-4);
fprintf('Raiz quadrada de -4: %fi com erro de %f\n', sqrtNeg4, errorNeg4);

