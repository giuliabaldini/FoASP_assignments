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
  
    
    step = (t2 - t1) / n(j);
    
    % dividing the samples in time.
    t = t1:step:t2;
    
    t = t(1:end-1);
    
    values = c*e.^(w*i*2*pi*t);
    
    imag_values = imag(vaina)
    
    real_values = real(vaina)
    
    scatter3(t, real_value, imag_value)
    
  
  
  
  end
  
  
end
