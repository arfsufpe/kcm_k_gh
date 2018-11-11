function [prototypes] = init_prototypes(view,c)
  
  #initialize prototypes at random
  #args:
        #the data set (view)
        #number of clusters (c)
  
  #returns the vector of representatives(prototypes)
  
  
  _nRows = size(view,1);  %number of rows

  #randomly select c distinct prototypes
  rndIDX = randperm(_nRows);

  prototypes = view(rndIDX(1:c),:);

 endfunction
