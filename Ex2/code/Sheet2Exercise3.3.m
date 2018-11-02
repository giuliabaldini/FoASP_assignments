% FASP - Sheet2 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function x = Sheet2Exercise3()
%% 
  % Outputs:
  % Plots two functions for comparison
  x = -pi:0.01:pi; 
  
  %% Plotting
  plot(x, cos(x), 'r'); hold on;
  plot(x, (1/2)*(exp(x*i) + e(x*i)), 'b');
  
end
