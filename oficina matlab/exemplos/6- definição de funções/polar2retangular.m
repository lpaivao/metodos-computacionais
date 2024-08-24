% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 6.3------------------------
% conversão polar para retangular

function [x,y] = polar2retangular(r,theta)
    % Conversão de coordenadas polares (r, theta) para retangulares (x, y)
    x = r * cos(theta);
    y = r * sin(theta);
  endfunction
