function [g,_1_over_s2,d] = init_kcm_k_gh(view,c,gamma,p)
    #Process initialization for KCM-K-GH algorithm.
    #Parameters
    #----------
    #d : array_like
    #    The data set ``{ x1, ... xn }``.
    #c :
    #    The number of clusters.
    #y :
    #    A suitable parmeter ``?``.
    #p :
    #    Number of variables.
    
    #randomly select c distinct prototypes g(i) in Di with (1 <= i <= c)
    g = init_prototypes(view,c);
    
    #inicialize the width hyper-parameter vector s
    _1_over_s2 = init_1_over_s2(gamma,p);
    
    #TODO: ASSIGN THE OBJECT EK TO THE CLUSTER PI IF ||fi(xk)-g(i)||^2
    
    
endfunction
