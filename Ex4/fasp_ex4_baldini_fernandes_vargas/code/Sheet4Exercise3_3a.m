% FASP - Sheet4 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function Sheet4Exercise3_3a(p)
%% 
  % Inputs:
  % p, real number or vector with real numbers
  % Outputs:
  % plot of all the unit-circles with p-norms
 
 
  plotTitle = "Unit Circles with norms p = \{ ";
  for j = 1:length(p)
    plotTitle= strcat(plotTitle, num2str(p(j)));
    if j ~= length(p)
      plotTitle= strcat(plotTitle, ',');
    end
  end
  
  plotTitle = strcat(plotTitle, "\}");
  colors = ['k', 'b', 'r', 'g', 'm', 'c'];
  
  x = -1:0.01:1;
  for i = 1:length(p)
    lineColor = colors(mod(i, 6) + 1);
    y = (1 - abs(x .^ p(i))).^(1/p(i));
    plot(x,y, lineColor)
    hold on
    y = -y;
    plot(x,y, lineColor)
    hold on  
  end
  title(plotTitle)
  hold off
  