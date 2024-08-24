% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 5.4------------------------
% Plot multiplo

clc;
clear all
close all

v0 = 25;
h0 = 250;
g = -9.81;
t = 0:0.1:20;

V = g.*t+v0;
H = 0.5*t.^2 + v0.*t + h0;

figure('name','deslocamento');
plot(t,H);
title(' tempo x posição');
xlabel('tempo(s)');
ylabel('posição(m)');
grid on;
axis

figure('name','velocidade');
plot(t,V)
title('tempo x velocidade');
xlabel('tempo (s)');
ylabel(' velocidade (m/s²)');
grid on

