% Definindo os parâmetros do sistema
base = 2;
mantissa_bits = 4;
expoente_min = -1;
expoente_max = 2;

% Lista de números representáveis
mantissas = [1, 1 + 0.125, 1 + 0.25, 1 + 0.375, 1 + 0.5, 1 + 0.625, 1 + 0.75, 1 + 0.875];
expoentes = expoente_min:expoente_max;
numbers = [];

for e = expoentes
    for m = mantissas
        numbers = [numbers, m * base^e];
    end
end

% Ordenar os números para garantir que estejam na ordem correta na reta numérica
numbers = sort(numbers);

% Configurações do gráfico
figure;
hold on;
plot(numbers, ones(size(numbers)), 'bo', 'MarkerFaceColor', 'b', 'MarkerSize', 6);  % Pontos azuis preenchidos
ylim([0.8, 1.2]);  % Define o limite do eixo y para ajustar a visualização
yticks([]);        % Remove o eixo y
xlabel('Reta Numérica');
title('Números Exatamente Representáveis na Reta Numérica');
grid on;

% Adicione rótulos aos pontos com maior espaçamento
for i = 1:length(numbers)
    % Mostrar os rótulos levemente acima dos pontos
    text(numbers(i), 1.05, num2str(numbers(i), '%.4f'), 'HorizontalAlignment', 'center', 'FontSize', 10, 'Color', 'k');
end

% Ajuste da exibição dos números no eixo x para evitar sobreposição
set(gca, 'XTick', numbers);  % Define as marcações do eixo x como os números representáveis
xtickformat('%.2f');  % Formatar rótulos do eixo x para mostrar duas casas decimais
set(gca, 'XTickLabelRotation', 45);  % Rotaciona os rótulos do eixo x para 45 graus

hold off;

