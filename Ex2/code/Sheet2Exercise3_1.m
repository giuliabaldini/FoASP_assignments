% FASP - Sheet2 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function [a, b] = Sheet2Exercise3_1(phi, radius)
%% 
  % Inputs:
  % phi = angle of the polar coordinates of a complex number
  % radius = radius of the polar coordinates of a complex number
  % Outputs:
  % a = imaginary part of the complex number
  % b = real part of the imaginary number
  

  a = 1i * sin(sym(phi)) * radius;
  b = cos(sym(phi)) * radius;
  
  
  [a, b]
  
  %% Plotting
  plot([0 a + b])
  
end
