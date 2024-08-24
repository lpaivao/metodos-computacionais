% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 3------------------------

clc;         % Limpa a janela de comandos
clear all;  % Limpa o workspace
close all;  % fecha todas janelas

% a função disp exibe um valor na janela de comandos
disp('Veja como utilizar o pause');
disp('aguarde 3 segundos');

% A função pause para a execução do script pelo tempo passado como argumento
% em segundos
pause(3);

disp('agora vamos limpar a tela após o clique');
% Quando não é passado um argumento a função espera uma entrada do teclado
pause();

pause('off');
% limpamos a tela
clc;
disp('agora a tela foi limpa');
pause('on');
