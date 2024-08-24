% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP


% Lançamento horizontal
% Exemplo adaptado de Programação em matlab para engenheiros STEPHEN J. CHAPMAN
% exemplo 5.2 trajetoria da bola

clc;
clear all
close all

% variavies definidas

% conv -- Fator de conversão de graus para radianos
% g -- aceleração da gravidade(m/sˆ2)
% ii, jj -- indices de laços
% index -- indice do alcance máximo no vetor
% maxangle -- Ângulo para o alcance máximo(deg)
% maxrange -- alcance máximo (m)
% range -- Alcance de um angulo(m)
% time -- Tempo(s)
% theta -- Angulo inicial (deg)
% traj_time -- Tempo total da trajetoria (s)
% vo -- Velocidade inicial (m/s)
% vxo -- Componeente X da velocidade inicial (m/s)
% vyo -- Componenete Y da velocidade inicial (m/s)
% x -- Posição X da bola (m)
% y -- Posição Y da bola (m)

% Constantes

% Fator de conversão de graus para radianos
% também poderiamos utilizar a função deg2rad
conv = pi / 180;
% aceleraçãod a gravidade
g = -9.81;
% Velocidade inicial
vo = 20;
% Vetor para guardar os alcances
range = zeros(1,91);

% O Problema solicita determinar o alcance maximo para uma faixa de 0 a 90 graus
% usando a relação que calcula o alcance maxímo determina-se qual ângulo tem o
% maior alcance

for ii = 1:91
   % decremento inicial para ir da faixa de 0 a 90 graus
   theta = ii -1;
   % componentes da velocidade
   vxo = vo * cos(theta*conv);
   vyo = vo * sin(theta*conv);
   % tempo de máximo onde o projetil alcança altura 0
   max_time = -2 * vyo / g;
   % alcance para o angulo atual
   range(ii) = vxo * max_time;
end
% Imprime tabela de angulos e alcance
fprintf('Alcance versus angulo theta:\n');
for ii = 1:91
 theta = ii -1;
 fprintf(' %2d %8.4f\n',theta, range(ii));
end
% Calcula o alcance máximo e o angulo
[maxrange index] = max(range);
maxangle = index - 1;
fprintf ('\nAlcance máximo é %8.4f em %2d graus.\n',...maxrange, maxangle);

% Determina as trajetorias
for ii = 5:10:85
   % Calcula a velocidade e tempo máximo para o angulo atual
   theta = ii;
   vxo = vo * cos(theta*conv);
   vyo = vo * sin(theta*conv);
   max_time = -2 * vyo / g;
   % Calcula a posição (x,y)
   x = zeros(1,21);
   y = zeros(1,21);
   for jj = 1:21
   time = (jj-1) * max_time/20;
   x(jj) = vxo * time;
   y(jj) = vyo * time + 0.5 * g *time^2;
   end
   plot(x,y,'b');
   if ii == 5
   hold on;
   end
end
% formatção do grafico
title ('\bfTrajetoria da bola vs Angulo inicial \theta');
xlabel ('\bf\itx \rm\bf(metros)');
ylabel ('\bf\ity \rm\bf(metros)');
axis ([0 45 0 25]);
grid on;
% Plot da trajetoria máxima
vxo = vo * cos(maxangle*conv);
vyo = vo * sin(maxangle*conv);
max_time = -2 * vyo / g;
% Calcula a posição (x,y)
x = zeros(1,21);
y = zeros(1,21);
for jj = 1:21
 time = (jj-1) * max_time/20;
 x(jj) = vxo * time;
 y(jj) = vyo * time + 0.5 * g * time^2;
end
plot(x,y,'r','LineWidth',3.0);
hold off

