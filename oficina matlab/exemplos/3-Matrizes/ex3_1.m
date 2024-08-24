% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 3.1------------------------
% Criando matrizes e vetores

clc;
clear all
close all

% a matriz básica

A = 10;
whos('A');

% declarando um vetor linha
  B = [2,-5,87,22]
% Outro modo de declarar um vetor
  C = [12 5 6 9 7]
% Declarando um vetor coluna
  D= [12;14;15;20]

% Declarando uma matriz bidemensioal

  E = [1 4 6;4 8 7; 3 6 9; 4 7 11]

%% criando matrizes com funções

% uma matriz de zeros
F = zeros(2)

% matriz de uns
G = ones(5,1)

% matriz diagonal
I = diag(D)

% matriz identidade
H =  eye(3)
