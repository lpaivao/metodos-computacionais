% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 2.7------------------------
% operadores logicos

clc;
clear all
close all

% valores logicos

% true =1 false =0
a = true;
b = false;
disp(a);
disp(b)

% operadores básicos not,or,and
disp('Tabela verdade not');
printf('A-Y\n');
printf('%d-%d\n',a,~a);
printf('%d-%d\n',b,~b);

disp('----------------------');

disp('Tabela verdade or');
printf('A-B-Y\n');
printf('%d-%d-%d\n',false,false,false|false);
printf('%d-%d-%d\n',false,true,false|true);
printf('%d-%d-%d\n',true,false,true|false);
printf('%d-%d-%d\n',true,true,true|true);

disp('----------------------');


disp('Tabela verdade and');
printf('A-B-Y\n');
printf('%d-%d-%d\n',false,false,false&false);
printf('%d-%d-%d\n',false,true,false&true);
printf('%d-%d-%d\n',true,false,true&false);
printf('%d-%d-%d\n',true,true,true&true);


% o que acontence se aplicarmos operadores logicos em um vetor?

A = [25 17 9]
B = [12 -1 7]

disp('aplicando os operadores em vetores');
A|B
A&B
~A

disp('Função logical ')
logical(A)

