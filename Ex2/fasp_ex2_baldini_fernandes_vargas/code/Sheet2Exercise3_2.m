% FASP - Sheet2 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function [primitives] = Sheet2Exercise3_2(n)
%% 
  % Inputs:
  % n = natural number
  % Outputs:
  % z = all nth roots of unity up to n
  
  assert(n >= 1,'n >= 1');

  % Getting all roots from 1 to n
  for l = 1:n 
    for j = 1:n  
      if (j > l)
        roots_n(l, j) = 0 + 0*1i;
      else
        roots_n(l, j) = cos(sym(2*pi*j)/l) + 1i*sin(sym(2*pi*j)/l);
      end
    end
  end
  
  roots_n_n = roots_n(n,:);
  primitives = [];
  prim_counter = 1;
  
  % Checking if each member in roots of N is primitive, i.e. is not a root in 
  % any previous roots 
  for k = 1:n
    possible_primitive = roots_n_n(k);
    is_primitive = 1;
    for j = 1:n-1
      for l = 1:n
        if (possible_primitive == roots_n(j,l))
          is_primitive = 0;
          break
        end
      end
      if (is_primitive == 0)
        break
      end
    end
      if (is_primitive == 1) 
            primitives(prim_counter) = possible_primitive;
            prim_counter = prim_counter + 1;
      end
  end
  
  th = 0:pi/50:2*pi;
  xunit = cos(th);
  yunit = sin(th)*i;
  
  units = xunit + yunit;
  
  hold on
  plot(units)
  title(strcat('Plot of primitive root units for n = ', int2str(n)))
  plot(primitives, 'ro')
  hold off
  
  
  primitives
  
  
end
