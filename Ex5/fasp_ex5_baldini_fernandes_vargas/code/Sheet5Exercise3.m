% FASP - Sheet5 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function Sheet5Exercise3(w, c, t1, t2, n)

  %
  % Inputs:
  % w: frecuency
  % c: amplitude
  % t1: starting second
  % t2: ending second
  % n: vector including the number of samples for the animated plot
  
  
  
  for j=1:length(n)
  
    t = linspace(t1,t2,n(j));
    
    values = c*exp(w*1i*2*pi*t);
    
    imag_values = imag(values);
    
    real_values = real(values);
    
    scatter3(t, real_values, imag_values)
    title(strcat("Discrete exponential with ", int2str(n(j)), " samples" ))
    xlabel("Time [seconds]")
    ylabel("Real axis")
    zlabel("Imaginary axis")
    pause(0.1)
  
  
  
  end
  
  
end
