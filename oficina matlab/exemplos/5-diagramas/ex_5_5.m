% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 5.5------------------------
% Plot conjunto

clc;
clear all
close all

x = 0:0.1:6;

y1 = sin(x);
y2 = cos(x);

plot(x,y1);
hold on
plot(x,y2);
legend('seno' , 'cosseno');0
grid on
