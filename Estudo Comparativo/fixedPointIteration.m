function [root, ea, iter, xr_values, ea_values] = fixedPointIteration(gfunc, x0, es, maxit)
  iter = 0;
  xr = x0;
  ea = 100;
  xr_values = [xr];
  ea_values = [];
  while (1)
    xrold = xr;
    xr = gfunc(xrold);
    iter = iter + 1;
    xr_values = [xr_values, xr];
    if xr ~= 0
      ea = abs((xr - xrold) / xr) * 100;
      ea_values = [ea_values, ea];
    endif
    if ea <= es || iter >= maxit
      break;
    endif
  endwhile
  root = xr;
endfunction
