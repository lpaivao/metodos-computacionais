% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 2.3------------------------
% Operações aritimeticas básicas

clc;
clear all
close all

% Algumas operações aritimeticas no matlab/octave

a = 2;
b = 3;

% soma
  a+b
% subtração
  b-a
% multiplicação
  a*b
% divisão
  a/b
% exponenciação
  a^b

  % vamos calcular  a posição de um corpo com o MRUV
  S0 = 25;  % em metros
  V0 = 15 ; % Km/h
  a = 0.05; %  Km/s²
  t = 3; % Horas

  S = S0+V0*t+( (1/2)*(a*t^2) )

  % equação de Torricelli
  V0= 25; % Km/h
  a = 0.5; %  Km/s²
  Ds = 250; % Km

  V = sqrt( V0^2+2*a*Ds )

  % produto escalar

  A = 9;  % módulo do vetor A
  B = 14; % módulo do vetor B
  teta = 45;  % Angulo entre os vetores

  pe = A*B*cos(45)

