% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 4.4------------------------
% Estrutura switch

clc;
clear all
close all

escolha = 0;
continua = true;
resistencia = -1;
tensao_max =0;
faixas = zeros(1,5);

while( continua)
  clc;
  disp('Calculadora de parametros de resistores');
  disp('[1] Definir resistencia');
  disp('[2] Definir tensão máxima');
  disp('[3] Calcular medidas');
  disp('[4] Sair');

  escolha = input('Escolha opção:');

  switch (escolha)
    case 1
        resistencia = input('Resistencia:');
    case 2
        tensao_max = input('input informe a tensão máxima:');
    case 3
       disp('potência maxima');
        Pmax =(tensao_max^2) /resistencia;
        disp(Pmax);
       disp('corrente maxima');
        disp(sqrt(Pmax/resistencia));
        pause(5);
    case 4
        continua= false;
    otherwise
      disp('Valor invalido !!!')
  endswitch
  endwhile
