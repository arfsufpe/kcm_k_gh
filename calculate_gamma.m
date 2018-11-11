function  [gamma] = calculate_gamma (p,view)
  
  # p = number of variables
  # view = the data set
  # Part of the preprocessing phase
  #sigma_squared = calculate_sigma_squared(view);
  sigma_squared = sigma_squared(view);
  
  #fprintf("sigma squared is %s", sigma_squared);
  
  gamma = (1/sigma_squared)^p;
  
  #fprintf("gamma is %s", gamma);

endfunction
