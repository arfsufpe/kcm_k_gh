function [result] = calculate_j_kcm_k_gh_ek(e_k, g_i, _1_s2)
   #args  *e_k    (element in the example)
   #      *g_i    (element in the actual cluster)
   #      *_1_s2  (the hyperparameter vector)
   #The objective function ``JKCM-K-GH`` to minimize.
   result = 2*(1 - ks(e_k, g_i, _1_s2));
   
  
endfunction
