% FASP - Sheet2 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function Sheet2Exercise3_3()
%% 
  % Outputs:
  % Plots two functions for comparison
  function1 = @(x) cos(x);
  function2 = @(x) (1/2)*(exp(1).^(1i*x)+ exp(1).^(-1i*x));
  
  limits = [-pi, pi];
  
  %% Plotting
  subplot(2, 1, 1)
  fplot(function1, limits)
  subplot(2,1,2)
  fplot(function2, limits)
  
end
