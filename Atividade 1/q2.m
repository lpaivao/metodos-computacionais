display("teste");

function [sqrt_a, final_error] = babylonian_sqrt(a, tol)
    % Verifica se 'a' é negativo para trabalhar com números imaginários
    if a < 0
        a = -a;
        is_imaginary = true;
    else
        is_imaginary = false;
    end

    % Inicializa x e define um valor inicial de erro
    if a == 0
        sqrt_a = 0;  % Raiz quadrada de 0 é 0
        final_error = 0;
        return;
    end

    x_old = a / 2; % Escolha inicial de x, baseada em a

    % Laço de iteração para refinamento da raiz quadrada
    while true
        % Aplica a fórmula babilônica
        x_new = (x_old + a / x_old) / 2;

        % Calcula o erro relativo
        epsilon = abs((x_new - x_old) / x_new);

        % Atualiza x_old para a próxima iteração
        x_old = x_new;

        % Verifica se o erro é menor que a tolerância, então interrompe o loop
        if epsilon <= tol
            break;
        end
    end

    % Caso o número seja negativo, converte o resultado para número imaginário
    if is_imaginary
        sqrt_a = x_new * 1i;
    else
        sqrt_a = x_new;
    end

    % Retorna o resultado final e o erro
    final_error = epsilon;
end

% Testando a função para diferentes valores de 'a' com tolerância de 10^-4
tolerance = 1e-4;  % Pode ser ajustado para 1e-3 ou outro valor conforme necessário
values = [0, 2, 10, -4];

for i = 1:length(values)
    a = values(i);
    [result, error] = babylonian_sqrt(a, tolerance);
    fprintf('Para a = %d: sqrt(a) = %.5f, erro final = %.5e\n', a, result, error);
end

