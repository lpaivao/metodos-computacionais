% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 3.5------------------------
%   Operador :

clc;
clear all
close all

% criando uma matriz com o :
A = 1:5

% definindo um incremento

B = 0:2:25

% Acessando os elementos de uma matriz

C = randi([1 25],5,5)

%exibindo a primeira linha
C(1,:)

% exibindo as duas ultimas colunas
  C(:,4:5)

% exibindo o centro
C(2:4,2:4)

C(:,[1 5])

X = [2 5 7;10 0 5;9 78 100]
Y = [7 8 9; 1 5 7;9 2 1]

ind = X>Y
X(ind)

