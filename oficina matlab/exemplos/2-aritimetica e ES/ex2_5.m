% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 2.5------------------------
% Trabalhando com tipos complexos, hexadecimais e binarios

clc;
clear all
close all


% Declarando um número complexos

 % um número complexo pode ser criado diretamente com os as letras i e j
 z = 2 +4i
 x = 25 -3j

 % também é possível criar complexos com a função complex

 d = complex(2,5)

 %podemos usar dois complexos como parametros da função complex

 y = complex(z,x)

 % usamos a função real para obter  a parte real
   disp('parte real de x')
   real(x)
  % usamos a função imag para obter  a parte imaginaria
  disp('parte imaginaria de x')
  imag(x)
  % usamos a função angle para obter o angulo
    disp('Angulo de x')
    angle(x)
  % usamos a função abs para obter o módulo
    disp('módulo de x')
    abs(x)
  % usamos a função conj para obter o complexo conjugado
    disp('Complexo conjugado de x')
    conj(x)

    % declaração de números hexadecimais
    H = 0x2A
    % declaração de números binarios
    B = 0b1010
