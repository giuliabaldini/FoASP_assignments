% FASP - Sheet2 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function z = Sheet2Exercise3(n)
%% 
  % Inputs:
  % n = natural number
  % Outputs:
  % z = all nth roots of unity up to n
  
  assert(n >= 1,'n >= 1');
  z = roots([1 zeros(1,n-1) -1]); % Find the roots for the x^n - 1 = 0 function
  
  %% Plotting
  plot(z)
  
end
