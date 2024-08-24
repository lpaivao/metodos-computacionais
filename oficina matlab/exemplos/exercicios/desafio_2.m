% Desafio 2
% Fazer a conversão de graus para radianos e radianos para graus


clc;
clear all
close all

% Definindo n em graus
disp('valor em graus');
n = 60;
% a formula para conversão de graus para radianos é
% n* pi/180

n_rad = (n* (pi/180))

% a formula para conversão de radianos para graus é
% n* 180/pi

disp('valor em graus');
% Definindo n em radianos
n = 1.05;
n_graus = (n* (180/pi))

disp('agora usando as funções nativas do matlab/octave');

a = deg2rad(60)
b = rad2deg(1.05)

