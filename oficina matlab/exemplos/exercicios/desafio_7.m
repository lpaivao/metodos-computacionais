% Desafio 6 exemplo 2.4 do livro texto

% Determinando a resistência para maxima potência

clc;
clear all
close all

% Tensão da fonte
volts = 120;
% Resistencia
rs = 50;
% Vetor para resistência da carga
rl = 1:1:100;
% A corrente pode ser calculada pela lei de ohm
% V = R*I
% São utilizados os operadores elemento a elemento para as operações

amps = volts ./ ( rs + rl );

% Calculando a potência
% P = I²*R
pl = (amps.^2) .* rl;
% Plotando a curva de potência
plot(rl,pl);
title('Curva de Potência vs resistência');
xlabel('Resistênica da carga (ohms)');
ylabel('Potência (watts)');
grid on;

hold on

% Determinando o ponto de máxima potência

[Pmax,in] =max(pl);

disp('resistência de maxima potência');
disp(rl(1,in));

% plotando o ponto no grafico
plot(rl(1,in),Pmax,'marker','*');
