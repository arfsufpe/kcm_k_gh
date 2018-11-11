function [result] = ks(x_l,x_k,_1_s2)
  # The Kernel function, based on a gaussian kernel function with a 
  #global vector of hyperparameter s
  
  #args   *example xl (1*num_features)
  #       *example xk (1*num_features)
  #       *_1_s2 (the hyper parameter vector) (1*num_features)
  
  diffs = (x_l - x_k).^2; # the difference between the ek ^2
 
  summ = _1_s2 * diffs';
  result = (-1/2)*summ;
  result = exp(result);
  
endfunction
