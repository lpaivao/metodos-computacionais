% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 3.4------------------------
%   Reorganizando matrizes

clc;
clear all
close all

% Criando a matriz
  X = magic(6)

  %substituindo a terceira linha
  X(3,:) = [1 1 1 1 1 1]

  %removendo a primeira coluna
  X(:,1) = []

  % reorganizando como uma matriz de 2 linhas
  reshape(X,[2 15])

  % usando o operador de transposição
  X'

  % Usando funções de inversão
    flipud(X)
    fliplr(X)

  rot90(X)
