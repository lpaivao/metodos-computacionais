% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 3.7------------------------
%   Aplicação em circuitos eletricos

clc;
clear all
close all

% A representa 3 equações de 3 variaveis para um circuito eletricos
A=[3 -2 -1;-4 7 -1;2 -3 1];
% B representa o vetor coluna com os valores conhecidos de tensão
B = [12;0;0];

% esse problema pode ser resolvido com uma solução do tipo
% A-¹*B

A\B

%ou

inv(A)*B
