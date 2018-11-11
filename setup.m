
function [p, c, gamma] = setup (view, 
                                number_of_clusters 
                                ) 
disp("Setting up: c (num_of_clusters), p (number of variables) and gamma")

p = size(view,2);       %number of variables (parameters)
c = number_of_clusters; %number_of_clusters
gamma = calculate_gamma(p,view);%gamma ( a suitable parameter)



%_nRows = size(view,1);  %number of rows

%randomly select c distinct prototypes
#rndIDX = randperm(_nRows);

#prototypes = view(rndIDX(1:c),:);

#one_over_sigma_squared =  ones(1,p)*(gamma)^(1/p);

endfunction