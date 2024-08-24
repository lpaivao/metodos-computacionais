% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 2.2------------------------
% utilizando as fuções de entrada
clc;
clear all
close all

disp('Vamos somar 2 números');
num1 = input('Digite o primeiro número:');
num2 = input('Digite o segundo número:');

disp('O resultado é:');
disp(num1+num2);

% agora lendo a entrada com um segundo parametro
disp('Vamos somar 2 números');
num1 = input('Digite o primeiro número:','s');
num2 = input('Digite o segundo número:','s');

disp('O resultado é:');
printf('%s%s\n',num1,num2);
disp('javascript é você??????');

% disp inpunt printf yes_or_no
