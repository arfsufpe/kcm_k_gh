function percent_avg = calculate_sigma_squared(view)
  #calculate sigma^2
  #average between the 0.1 quatile and 0.9 qualite of ||xl - xk|| with l != k
  #argument: the data set view
  
  #returns the euclidian distances among all points in the dataset (pairwise)
  distances = distance_matrix(view);
  #disp(distances)
  
  #converts all the distances matrix into a single row
  line_vector = distances'(:)';
  
  sorted_line_vector = sort(line_vector);#sorts the vector
  sorted_line_vector(sorted_line_vector==0)=[];#remove zeros to calculate quatiles
  disp(sorted_line_vector);
  
  q1 = quantile(sorted_line_vector,0.1);
  q9 = quantile(sorted_line_vector,0.9);
  
  percent_avg = (q1+q9)*0.5;
  
  #fprintf("the average squared quantile percent_avg is %s", percent_avg);
  
endfunction
