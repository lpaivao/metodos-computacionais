% Desafio 4
% receber do dois intervalos de limite, criar dois vetores com esses limites
% depois reorganizar um desses vetores e realizar a multiplicação entre eles

clc;
clear all
close all

% recebendo os limites dos usuario

% podemos receber mais de um valor de entrada se declarada como um vetor
% por exemplo  [2,4]

a = input('informe os limtes do primeiro vetor:');
b = input('informe os limtes do segundo vetor:');

% os vetores a e b possuem dimensao 1,2  e podemos acessar cada valor
% individualmente

% criando o vetor a como operador :
A = a(1,1):1:a(1,2)
% criando o vetor b com a função linspace
B = linspace(b(1,1),b(1,2),b(1,2)-b(1,1)+1)

% para realizar o porduto entre os vetores temos que:
% A deve ter o mesmo numero de colunas que B tem de linhas
% Devemos garantir essa condição
% deixando os vetores como mesmo tamanho e depois obtendo o transposto de um deles

% usando a função resize para reconstruir o vetor B
B = resize(B,size(A))

%transpondo A
A = A'

disp('Multiplicação de A por B');
A*B
