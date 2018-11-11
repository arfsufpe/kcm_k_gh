function [qm] = sigma_squared(view)
  #part of the preprocessing phase
  D = distance_matrix(view); # euclidian distance between the examples pairwise
  #disp(D);
  s = D';
  s = s(:)'; # transform the matrix into a row vector
  s = sort(s); # sort the vector
  
  s(s==0)=[];#remove the zeros from the s vector
  
  
  qm = (quantile(s,0.1) + quantile(s,0.9))/2;% average between first and second quantiles
  
endfunction
