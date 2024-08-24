% Desafio 4
% Solução do sistema linear


clc;
clear all
close all

% a matriz é representada no matalab/octave como

M = [3,-1,-2;6 -1 -2;6 -5 1-6]

% o vetor da igualdade é representado como um vetor coluna
v = [0;80;40]

% este tipo de sistema pode ser solucionado pela formula
% S = A-¹*b

% o operador \ implementa essa operação
disp('solucionando com o operador \');
M\v

disp('solucionando com a função de matriz inversa');
 inv(M)*v




