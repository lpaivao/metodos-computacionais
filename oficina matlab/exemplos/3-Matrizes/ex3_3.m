% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 3.3------------------------
%   Combinando matrizes

clc;
clear all
close all

% Declarando 2 vetores Linha
A = [ 2 3 4]
B = ones(size(A))

% fazendo a conbinação vertical

Y = vertcat(A,B)
whos('Y');

col1 = [4;4]
col2 = [2;2]

%combinação horizontal
  Y = horzcat(Y,col1,col2)
  whos('Y');

  X= vertcat(Y,randi([-20 100],size(Y)))
