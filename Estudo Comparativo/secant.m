function [root, ea, iter, xr_values, ea_values] = secant(func, x0, x1, es, maxit)
  iter = 0;
  ea = 100;
  xr_values = [x0, x1];
  ea_values = [];
  while (1)
    xrold = x1;
    xr = x1 - func(x1) * (x1 - x0) / (func(x1) - func(x0));
    iter = iter + 1;
    xr_values = [xr_values, xr];
    if xr ~= 0
      ea = abs((xr - xrold) / xr) * 100;
      ea_values = [ea_values, ea];
    endif
    if ea <= es || iter >= maxit
      break;
    endif
    x0 = x1;
    x1 = xr;
  endwhile
  root = xr;
endfunction
