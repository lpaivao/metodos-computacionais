% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 4.1------------------------
% O laço for

clc;
clear all
close all

A = [0:100];
B = true(1,length(A));
for i=1:size(A,2)
  B(i) = logical( mod(A(i),2) );
endfor

A(B)
