% FASP - Sheet5 - Giulia Baldini, Luis Fernandes, Agustin Vargas

%%  Compute the fourier expansion
t = linspace(0,1,500);

K_s = [5, 25, 50];

for K_i = 1:size(K_s, 2)
    
    K = K_s(K_i);

    four_exp = 0;
    f_1 = 0;
    four_exp = four_exp + f_1;

    for k = 1:K
    % Compute the sum over k for the base multiplied with the coefficient
        f_Ak = sqrt(2)*(sin(2*pi*k)/2*pi*k - sin(pi*k)/pi*k);
        f_Bk = (sqrt(2)/(pi*k))*(cos(pi*k) - 0.5 - 0.5 * cos(2*pi*k));

        A_k = sqrt(2)*cos(2*pi*k*t);
        B_k = sqrt(2)*sin(2*pi*k*t);

        four_exp = four_exp + f_Ak * A_k + f_Bk * B_k;

    end
    plot(t, four_exp, 'r')
    hold on
    plot(linspace(0,0.5,2500), -ones(2500,1))
    plot(linspace(0.5,1,2500), ones(2500,1))
    title(strcat("Fourier expansion of the step function using k = ", int2str(k)))
    hold off
    pause(1)
    
end