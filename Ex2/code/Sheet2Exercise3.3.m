% FASP - Sheet2 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function [a, b] = Sheet2Exercise3(phi, radius)
%% 
  % Inputs:
  % phi = angle of the polar coordinates of a complex number
  % radius = radius of the polar coordinates of a complex number
  % Outputs:
  % a = imaginary part of the complex number
  % b = real part of the imaginary number
  
  a = sin(phi) * radius
  b = cos(phi) * radius
  
  [a, b]
  
  %% Plotting
  plot([0 b], [0 a])
  
end
