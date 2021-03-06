% FASP - Sheet4 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function Sheet4Exercise4_4a(duration, f_s, k, f_0)
%% 
  % Inputs:
  % duration, duration in seconds of the chirp singal
  % k, vector of k values according to the equation
  % f_s, sampling frequency in Hertz
  % f_0, vector of f_0 values according to the equation
  % Outputs:
  % plot of all the chirp signals
t = linspace(0, duration, duration * f_s);

plot_rows = length(k);
plot_cols = length(f_0);
if length(k) < length(f_0)
    [plot_cols, plot_rows] = deal(plot_rows,plot_cols);
end

plot_ind = 1;
for i=1:length(k)
    for j=1:length(f_0)
        chirp = sin(2 * sym(pi) * (f_0(j) + (k(i)/2) .* t) .* t);
        subplot(plot_rows,plot_cols,plot_ind)
        plot(t,chirp)
        title(strcat("Chirp signal for k = ", num2str(k(i)), ...
                     " and f_0 = ", num2str(f_0(j))))
        xlabel("Time")
        ylabel("Amplitude")
        plot_ind = plot_ind + 1;
    end
end
