% Desafio 3
% Conervsão da forma polar para retangular


clc;
clear all
close all

% um numero polar na forma r<theta
r = 2;
theta = 45;

% é convertido  pela formula
% Re = |z|*cos(theta)
% Img = |z|*sen(theta)

  disp('convertendo o numero');
  Re = abs(r)*cos(theta)
  Img = abs(r)*sin(theta)

  disp('checando com o as funcoes integradas');
  [r,i] = pol2cart(theta,r)
