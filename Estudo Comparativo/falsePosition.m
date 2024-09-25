function [root, ea, iter, xr_values, ea_values] = falsePosition(func, xl, xu, es, maxit)
  iter = 0;
  xr = xl;
  ea = 100;
  xr_values = [];
  ea_values = [];
  while (1)
    xrold = xr;
    % Cálculo da raiz aproximada usando a fórmula da falsa posição
    xr = xu - (func(xu) * (xl - xu)) / (func(xl) - func(xu));
    iter = iter + 1;
    xr_values = [xr_values, xr];
    if xr ~= 0
      ea = abs((xr - xrold) / xr) * 100;
      ea_values = [ea_values, ea];
    endif
    % Teste para determinar o novo intervalo
    test = func(xl) * func(xr);
    if test < 0
      xu = xr;
    elseif test > 0
      xl = xr;
    else
      ea = 0;
    endif
    if ea <= es || iter >= maxit
      break;
    endif
  endwhile
  root = xr;
endfunction
