function [root, ea, iter, xr_values, ea_values] = bisection(func, xl, xu, es, maxit)
  iter = 0;
  xr = xl;
  ea = 100;
  xr_values = [];
  ea_values = [];
  while (1)
    xrold = xr;
    xr = (xl + xu) / 2;
    iter = iter + 1;
    xr_values = [xr_values, xr];
    if xr ~= 0
      ea = abs((xr - xrold) / xr) * 100;
      ea_values = [ea_values, ea];
    endif
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
