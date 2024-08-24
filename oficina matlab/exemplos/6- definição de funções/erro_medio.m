% OFICINA INTRODUÇÃO AO MATLAB/OCTAVE PARA ENGENHARIA
% XXXI SIECOMP

% Este é o arquivo de modelo
%---------- Arquivo de exemplo 6.2------------------------
% erro médio

function err_m = erro_medio(valor_real,medicoes)
  % Calcula o erro absoluto entre o valor real e cada valor medido
  erro_absoluto = abs(medicoes - valor_real);
  err_m = erro_absoluto / length(medicoes);
  endfunction
