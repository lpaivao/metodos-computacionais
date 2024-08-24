% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 4.3------------------------
% Estrutura if

clc;
clear all
close all

% exemplo de um if aplicado em tipos de triagulos

disp('Classificador de trinagulos');
X = input('Informe os valores dos lados do triangulo:');
A = X(1,1);
B = X(1,2);
C = X(1,3);
if A == B && B == C
  disp('Triangulo equilatero');
elseif A == B || A == C
    if( B ~= C)
      disp('Trinagulo isoceles');
    endif
else
      disp('Trinagulo escaleno');
endif
