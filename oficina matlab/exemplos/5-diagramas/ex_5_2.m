% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 5.2------------------------
% Plot discreto

clc;
clear all
close all

f = 1/8;
n = 0:1:20;

u = square(2*pi*f*n,50);

stem(n,u);
title('pulso retangular');
%ylim([-2 2]);
grid on;

