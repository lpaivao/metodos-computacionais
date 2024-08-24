% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 2.3------------------------
% Tipos númericos e sua conversão

clc;
clear all
close all

% O Matlab/Octave armazena por padrão os tipos númericos como double de ponto flutuante

% Declarando um inteiro
  num1 = 25;
  disp(num1);
% declarando um número de ponto flutuante
  num2 = 2.01;
  disp(num2);
  num3 = 5.00005;
  disp(num3);
  % utilizando o comando format podemos alterar a visualização das casas decimais
  disp('alterando o formato padrão de visualização');
  format long;
  disp(num3);

  disp('alterando para formato exponencial');
  format short e

  num4 = 1254.0000245521;
  disp(num4)

  disp('alterando para formato hexadecimal de bits');
  format hex

  num5= 16;
  num6 = 255;
  disp(num5);
  disp(num6);

 disp('alterando para formato de razão de inteiros');
 format rat

 num7 = 38.74;
 num8 = 0.5;
 disp(num7);
 disp(num8);

 % tipos númericos

   format short
  a = uint8(257)
  b = uint16(257)

  whos('a');
  whos('b');

  c = 25.74

  whos('c');

  % conversão de tipo
  cast(c,'uint8')

  d=cast(c,'single')
  whos('d')
