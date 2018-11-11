function [result] =  calculate_jkcm_k_gh(view, g, _1_s2)
  #The objective function ``JKCM-K-GH``.
  jkcm_k_gh_clusters = calculate_jkcm_k_gh_for_clusters(view,g,_1_s2);
  result = sum(jkcm_k_gh_clusters);
  
endfunction
