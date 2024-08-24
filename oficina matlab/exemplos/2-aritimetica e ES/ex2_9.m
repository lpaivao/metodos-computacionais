% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 2.9------------------------
% operadores bitwise

clc;
clear all
close all

a = 0b1001
b = 0b1110

disp('exibindo em binario');

disp(dec2bin(a));
disp(dec2bin(b));

disp('bitwise and');
dec2bin(bitand(a,b))

disp('bitwise or');
dec2bin( bitor(a,b) )

disp('bitwise xor');
dec2bin ( bitxor(a,b) )


%% operador de deslocamento

a = intmax('uint8');
s1 = 'Initial uint8 value %5d is %08s in binary\n';
s2 = 'Shifted uint8 value %5d is %08s in binary\n';
fprintf(s1,a,dec2bin(a))

for i = 1:8
    a = bitshift(a,1);
    fprintf(s2,a,dec2bin(a))
 end
