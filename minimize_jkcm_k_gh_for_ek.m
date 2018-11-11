function [result] = minimize_jkcm_k_gh_for_ek(e_k, g, _1_s2)
  
  #The objective function JKCM-K-GH calculated for all clusters.
  
  #Args
  #      e_k = kth element in the data
  #      g   = the clusters
  #      _1_s2 = the hyperparameter vector
  c = size(g,2);
  
  jkcm_k_gh_clusters = ones(1,c);
  
  #jkcm_k_gh_clusters = jkcm_k_gh_clusters.*e_k;
  
  #disp(jkcm_k_gh_clusters);
  #pause;
  
  #jkcm_k_gh_clusters = calculate_j_kcm_k_gh_ek(jkcm_k_gh_clusters, g, _1_s2);
  
  #disp(jkcm_k_gh_clusters);
  #pause;
  
  #[min_values indeces] = min(jkcm_k_gh_clusters, [], 1);
  
  #result = min(min_values);
  
  for i = 1:c
    jkcm_k_gh_clusters(1,i) = calculate_j_kcm_k_gh_ek(e_k, g(1,i), _1_s2);
  endfor
  
  result = min(jkcm_k_gh_clusters);
  
  #TODO avoid the for loop
  
endfunction
