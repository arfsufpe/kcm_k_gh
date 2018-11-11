function  _1_over_s2_j = init_1_over_s2(gamma, p)
  # Initialize hyper-parameters vector s
  
  #Formula:
  #      Set ``(1/sj²) = (gamma)^(1/p)``, where (1 <= j <= p).
  
  #args gamma
  #     p (number of variables/columns)
  
  #returns: p sized vector containing s (hyper parameters for each variable)
  
  #everything is initialized to the same value at first time
  # this vector will be updated furthermore
  
  _1_over_s2_j = ones(1,p);
  _1_over_s2_j = _1_over_s2_j*(gamma^(1/p));
  
endfunction
