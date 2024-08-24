% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 5.3------------------------
% Plot formatado

clc;
clear all
close all

x = -5:0.1:5;
y = x.^2;

figure('name','parabola');
plot(x,y,'color','r','linestyle','--');
title('parabola');
xlabel('tempo(t)');
ylabel('amostra');
grid on
