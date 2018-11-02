% FASP - Sheet2 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function [a, b] = Sheet2Exercise3(phi, radius)
%% 
  % Inputs:
  % phi = angle of the polar coordinates of a complex number
  % radius = radius of the polar coordinates of a complex number
  % Outputs:
  % a = imaginary part of the complex number
  % b = real part of the imaginary number
  
  # a = i * sin(phi) * radius # For Octave
  a = i * sin(sym(phi)) * radius # For Matlab
  # b = cos(phi) * radius # For Octave
  b = cos(sym(phi)) * radius # For Matlab
  
  
  [a, b]
  
  %% Plotting
  plot([0 a + b])
  
end
