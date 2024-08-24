% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 2.8------------------------
% operadores de conjunto

clc;
clear all
close all


%% join de duas tabelas

Tleft = table({'Janice','Jonas','Javier','Jerry','Julie'}',[1;2;1;2;1],...
        'VariableNames',{'Employee' 'Department'})

Tright = table([1 2]',{'Mary' 'Mona'}',...
         'VariableNames',{'Department' 'Manager'})

T = join(Tleft,Tright)

%% união e interseção de conjuntos

    A = [5 7 1]
    B = [3 1 1]

    C = union(A,B)
    D = intersect(A,B)

%% união de conjuntos
    A = table([1:5]',['A';'B';'C';'D';'E'],logical([0;1;0;1;0]))
    B = table([1:2:10]',['A';'C';'E';'G';'I'],logical(zeros(5,1)))

    C = union(A,B)

