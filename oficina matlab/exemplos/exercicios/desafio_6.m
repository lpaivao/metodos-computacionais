% Desafio 6
% Faça um script que adivinha o número do usuário,
%Faça apenas duas perguntas por iteração:
% pergunte se o número está correto e uma segunda que envolva valor ou tipo

clc;
clear all
close all


% definindo um intervalo para adivinhação

disp('pense em um numero entre 0 e 100');

%chute inicial
n = randi([0,100],1);
acertei =false;
maior = false;
%executa um laço para adivinhar o numero

while(true)
  disp(n);
  acertei = yes_or_no('este é o seu numero?');
  if(acertei)
    break;
  endif
  % caso não tenha acertado
  maior=yes_or_no('seu numero é maior que o chute?');
  if(maior)
    % usamos a função ceil para arredondar para o proximo inteiro
    n = ceil(n+(n/2));
  else
    % usamos a função round para arredondar para o mais proximo inteiro
    n = round(n-(n/2));
  endif

endwhile
