% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 3.6------------------------
%   Operações básicas

clc;
clear all
close all

A = [2 4 6;11 5 7]
B = [1 2 7;1 25 47]
x = 2

% operações com escalar

x+A
A-x
x*A
A/x
A.^x

% operacões entre matrizes

A+B
A-B
A/B
A.^B

C = [1 2;4 2;3 9]

A*C
