function [prod, quot] = Sheet1Exercise2(c1, c2)
%% Product and quotient of two complex numbers  
  % Inputs:
  % c1 = complex number one
  % c2 = complex number two
  % Outputs:
  % prod = product of c1 and c2
  % quot = quotient of c1 and c2 
  
  % We added the complex() function to ensure that, if any of the results
  % or inputs have only a real part, the plots still stay consistent and 
  % starting from 0. Example: compare plot([0 2]) and plot([0 complex(2)])
  
  c1 = complex(c1);
  c2 = complex(c2);
  prod = complex(c1 * c2)
  quot = complex(c1 / c2)
 
%% Plotting
  % Plots will show lines from the origin to the point where the complex 
  % number is located in the complex plane (indicated with an "x" in the 
  % plot)
  subplot(2, 1, 1)
  hold on
  plot([0 prod],"b")
  plot([0 c1],"k")
  plot([0 c2],"g")
  title('Product')
  xlabel('Real Axis')
  ylabel('Imaginary Axis')
  plot(prod,"bx")
  plot(c1,"kx")
  plot(c2,"gx")
  legend("c1*c2", "c1","c2")
  hold off
  subplot(2, 1, 2)  
  plot([0 quot],"b")
  hold on
  plot([0 c1],"k")
  plot([0 c2],"g")
  title('Quotient')
  xlabel('Real Axis')
  ylabel('Imaginary Axis')
  plot(quot,"bx")
  plot(c1,"kx")
  plot(c2,"gx")
  legend("c1/c2", "c1","c2")
  hold off
end