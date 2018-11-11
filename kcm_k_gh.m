function [partitions]  = kcm_k_gh (view, num_of_clusters)
  fprintf( "Setting up: c (num_of_clusters), number of variables and gamma\n")
  
  c = num_of_clusters;
  p = size(view,2);#number of variables
  
  gamma = calculate_gamma(p,view);
  
  partitions = zeros(1,c);
  
  #after this need to call init_kcm_k_gh (where I stopped)
  
endfunction
