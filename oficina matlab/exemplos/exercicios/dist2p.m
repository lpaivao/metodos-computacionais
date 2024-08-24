% Desafio 7

% Distancia entre dois pontos
function [d] = dist2p(P1,P2)
  d = sqrt( (P1(1,1)-P2(1,1))^2+(P1(1,2)-P2(1,2))^2+(P1(1,3)-P2(1,3))^2 );
endfunction
