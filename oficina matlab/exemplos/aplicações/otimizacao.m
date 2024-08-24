% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% OTIMIZAÇÃO
%  Aplicando método dos minimos quadrados para construção de uma reta de
%  aproximação da curva amostrada

clc;
clear all
close all

% Definindo pontos de amostragem
% Coordenadas x
x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
% Coordenadas y
y = [1, 2.6, 3.89, 4.8, 6.24, 6.98, 9, 11, 13.69, 15];

% Número de pontos
n = length(x);

% calculando somatorios
% sum_x = somatorio de x
  sum_x = sum(x);
% sum_x2 = somatorio de x^2
  sum_x2 = sum(x.^2);
% sum_y = somatorio de y
  sum_y= sum(y);
% sum_xy =somatorio de x*y
  sum_xy= sum(x.*y);

% Montagem e representação do sistema em forma matricial
  A = [n sum_x; sum_x sum_x2];
  b = [sum_y ;sum_xy];

% resolvendo o sistema utilizando o operador \
  coef = A\b;
  % ou pela regra de cramer
  a0 = ( (sum_y*sum_x2) - (sum_x*sum_xy) ) / ((n*sum_x2)-sum_x^2);
  a1 = ( (n*sum_xy) - (sum_x*sum_y))/( (n*sum_x2)-sum_x^2);
% Observe que o resultado é o mesmo para ambos os métodos

  % Definindo pontos para calcular a reta de regresão
  xp= linspace(0,10,100);
  % criando uma função anonima para representar a reta
  r = @(x) a0+a1.*x;

  % Cria a figura
  figure(1)
    % plota pontos da curva
    plot(x,y,'o');
    grid on
    hold on
    plot(xp,r(xp));
    title('Método dos minimos quadrados');
    xlabel('x');
    ylabel('y');
    legend('pontos amostrados','reta gerada');
    ylim([-1 16]);



