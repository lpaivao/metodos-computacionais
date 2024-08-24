clc

function [r, theta] = cartesian_to_polar(x, y)
    % Calcula o raio r
    r = sqrt(x^2 + y^2);

    % Calcula o ângulo θ em radianos e converte para graus
    if x > 0
        theta = atan(y / x);
    elseif x < 0 && y >= 0
        theta = atan(y / x) + pi;
    elseif x < 0 && y < 0
        theta = atan(y / x) - pi;
    elseif x == 0 && y > 0
        theta = pi / 2;
    elseif x == 0 && y < 0
        theta = -pi / 2;
    elseif x < 0 && y == 0
        theta = pi;
    else
        theta = 0;  % Caso em que x == 0 e y == 0
    end

    % Converte θ de radianos para graus
    theta = rad2deg(theta);
end

% Testando o programa com os casos fornecidos
test_cases = [2, 0; 2, 1; 0, 3; -3, 1; -2, 0; -1, -2; 0, -2; 0, 0; 0, -2; 2, 2];
for i = 1:size(test_cases, 1)
    x = test_cases(i, 1);
    y = test_cases(i, 2);
    [r, theta] = cartesian_to_polar(x, y);
    fprintf('Para x = %d, y = %d: r = %.2f, θ = %.2f graus\n', x, y, r, theta);
end

