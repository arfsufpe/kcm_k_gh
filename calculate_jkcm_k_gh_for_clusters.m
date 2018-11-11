function [acc] = calculate_jkcm_k_gh_for_clusters(view, g, _1_s2)
   #The objective function ``JKCM-K-GH``.
  c = size(g,2);
  acc = zeros(1,c);
  
  for i = 1:size(view,1)
    jkcm_k_gh = calculate_j_kcm_k_gh_ek(view(i,2), g(i,2), _1_s2);
    acc(1,i) += jkcm_k_gh;
  endfor
  
endfunction
