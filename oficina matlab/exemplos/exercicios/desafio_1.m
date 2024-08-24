% Desafio 1
% Pedir ao usaruario 3 valores e exibir na janela de comando os valores de
% seno, cosseno e tangente dos valores recebidos


clc;
clear all
close all

disp('Calculadora de cosseno,seno e tangente');
disp('Informe três números');
% recebe a entrada do usuario usando a função input e salva em uma variavel
a=input('Informe o primeiro número:');
b=input('Informe o segundo número:');
c=input('Informe o terceiro número:');

printf('|-----------------------|\n');
printf('|--      cos   sen   tan      --|\n');
printf('|-- [a]  %2.2f  %2.2f  %2.2f  --|\n',cos(a),sin(a),tan(a));
printf('|-- [b]  %2.2f  %2.2f  %2.2f  --|\n',cos(b),sin(b),tan(b));
printf('|-- [c]  %2.2f  %2.2f  %2.2f  --|\n',cos(c),sin(c),tan(c));

% observe que os resultados não batem com o esperado, por quê?
% as função cos,sin, e tan calculam para valores em radianos
% para caclular para valores em graus usa-se as funções cosd,sind e tand

disp('Como funciona a função cos')
help cos

disp('');

disp('agora utilizando as função para valores em graus');
printf('|-----------------------|\n');

printf('|--      cos   sen   tan      --|\n');
printf('|-- [a]  %2.2f  %2.2f  %2.2f  --|\n',cosd(a),sind(a),tand(a));
printf('|-- [b]  %2.2f  %2.2f  %2.2f  --|\n',cosd(b),sind(b),tand(b));
printf('|-- [c]  %2.2f  %2.2f  %2.2f  --|\n',cosd(c),sind(c),tand(c));
