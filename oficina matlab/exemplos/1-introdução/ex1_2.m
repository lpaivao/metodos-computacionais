% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP


% Este é o arquivo de modelo
%---------- Arquivo de exemplo 2------------------------

clc;         % Limpa a janela de comandos
clear all;  % Limpa o workspace
close all;  % fecha todas janelas

nome = input('Digite seu nome:','s');
idade = input('Digite sua idade:');

for i=1:idade
  printf('olá %s\n',nome);
  endfor

