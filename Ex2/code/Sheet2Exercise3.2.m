% FASP - Sheet2 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function z = Sheet2Exercise3(n)
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
        roots_n(l, j) = 0 + 0*i;
      else
        roots_n(l, j) = cos(2*pi*j/l) + i*sin(2*pi*j/l);
      end
    end
  end
  
  
  roots_n_n = roots_n(n,:);
  primitives = [];
  prim_counter = 1;
  
  % Checking if each member in roots of N is primitive, i.e. is not a root in 
  % any previous roots 
  for k = 1:n
    possible_primitive = roots_n_n(k)
    is_primitive = 1;
    for j = 1:n-1
      for l = 1:n
        if (possible_primitive == roots_n_n(j,l))
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
    end
  end
  
  primitives
  
end
