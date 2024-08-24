% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 4.1------------------------
% O laço while

clc;
clear all
close all

continua = true;
count = 0;
disp('o programa se encerra quando um número impar é informado três vezes seguida');
while continua
  % solicita a um usuario um número
  n = input('Digite um número:');
  % para cada
  resto = mod(n,2);
  count = count+ resto
  % se for par reseta count
  count = count*resto;
  continua = ~( count >= 3);
endwhile
