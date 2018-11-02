% FASP - Sheet2 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function x = Sheet2Exercise3()
%% 
  % Outputs:
  % Plots two functions for comparison
  function1 = @(x) cos(x);
  function2 = @(x) (1/2)*(e.^(i*x)+ e.^(-i*x));
  
  limits = [-pi, pi];
  
  %% Plotting
  subplot(2, 1, 1)
  fplot(function1, limits)
  subplot(2,1,2)
  fplot(function2, limits)
  #close all
  
end
