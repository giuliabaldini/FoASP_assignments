function prodAndQuot(c1, c2)
  prod = c1 * c2;
  quot = c1 / c2;
  
  subplot(2, 1, 1)
  prod
  plot(prod)
  title('Product')
  xlabel('Real Part: a')
  ylabel('Imaginary Part: b')
  subplot(2, 1, 2)
  quot
  plot(quot)
  title('Quotient')
  xlabel('Real Part: a')
  ylabel('Imaginary Part: b')