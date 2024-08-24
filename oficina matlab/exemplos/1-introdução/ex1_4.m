% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 1.4------------------------

clc
clear all
close all

x = 2;
n = 3;

% calculando a potencia de x
resultado = x*x*x

%utilizando laço for para calcular a potencia de x elevado a n

resultado2 = 1;
for i=1:n
    resultado2 = x * resultado2;
  end
  disp(resultado2);


% usando o operador de exponenciação
disp('resultado é:');
disp(x^n);
