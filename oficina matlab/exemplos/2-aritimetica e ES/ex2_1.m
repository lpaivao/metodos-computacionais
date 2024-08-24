% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 2.1------------------------
% utilizando as funções de saida
clc;
clear all
close all

% com disp um unico valor é exibido na janela de comandos
disp('está é a saida padrão com a função disp');

A = [ 2 4 8 6];

disp('também posso exibir variaveis');

%disp também aceita variaveis como argumento
disp(A);

disp('que tal  apenas uma valor do vetor');
disp(A(2));

% o classico printf
str = 'Para opções mais detalhadas temos o printf';
printf('%s \n o valor de A é; %d\n',str,A(1));

