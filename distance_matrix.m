function [D] = distance_matrix(X)
  
  n = size(X,1);%number of rows
  D = zeros(n,n);
  
  #for i = 1:nRows
  #  for j = i+1:nRows
  #    distance_matrix(i,j) = norm(view(i,:)-view(j,:));
  #  end
  #end
  

  sX2 = sumsq(X, 2); 
  XX = X*X';
  D = sqrt( repmat(sX2, 1, n) + repmat(sX2', n, 1) - 2*XX ); 
  
endfunction
