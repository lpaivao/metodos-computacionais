% Desafio 8

% Raizes de uma função quadratica
% equações do tipo ax²+bx+c=0
% tem solução com a fomrula quadratica
% r¹² = ( -b+- sqrt(b²-4ac) ) / 2a

function [r1,r2] =  raizes(p)
  %Definindo os coeficientes
  a = p(1,1);
  b = p(1,2);
  c = p(1,3);
  % determinando delta

  delta = b^2 - 4*a*c;

  if( delta > 0 )
    % Com Delta maior que zero a solução são duas raizes reais distintas
    disp('Solução Real, duas raizes distintas');
    r1 = ( -b+sqrt(delta) ) / 2*a;
    r2 = ( -b-sqrt(delta) ) / 2*a;
  elseif (delta == 0)
    % Com Delta maior que zero a solução é uma raiz real dupla
    disp('Solução Real, raiz dupla');
    r1 = r2 = -b/ 2*a;
  else
    disp('Solução Complexa, duas raizes distintas');
    r1 = ( -b+sqrt(delta) ) / 2*a;
    r2 = ( -b-sqrt(delta) ) / 2*a;
   endif
endfunction

