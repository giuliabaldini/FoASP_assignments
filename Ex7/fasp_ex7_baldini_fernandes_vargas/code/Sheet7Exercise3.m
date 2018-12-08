% FASP - Sheet7 - Giulia Baldini, Luis Fernandes, Agustin Vargas

function [tel_number] = Sheet7Exercise3(audio_path)

    %% Reading the audio input
    [y,Fs] = audioread(audio_path);

    % Determining the number of seconds according to the 
    % sampling frequency Fs

    n_sec = length(y)/Fs;
    tel_number = [];


    %% Discovering the telephone number
    for i=0:n_sec-1

        % Subsetting the whole input into seconds
        Y = fft(y((i*8000 + 1):(i*8000 + 8000)));
        L = length(Y);
        % Calculating the normalized absolute value of 
        % the fft of our signal
        P2 = abs(Y/L);
        % Subsetting to the single-sided spectrum 
        %(since fft is symmetric)

        P1 = P2(1:L/2+1);
        P1(2:end-1) = 2*P1(2:end-1);

        f = Fs*(0:(L/2))/L;
        freqs = find(P1 > 0.00001);

        if freqs(2) < 1330
            if freqs(1) > 860
                number = "*";
            elseif freqs(1) > 780
                number = "7";
            elseif freqs(1) > 705
                number = "4";
            else
                number = "1";
            end
        elseif freqs(2) < 1400
            if freqs(1) > 860
                number = "0";
            elseif freqs(1) > 780
                number = "8";
            elseif freqs(1) > 705
                number = "5";
            else
                number = "2";
            end
        else
            if freqs(1) > 860
                number = "#";
            elseif freqs(1) > 780
                number = "9";
            elseif freqs(1) > 705
                number = "6";
            else
                number = "3";
            end
        end

        tel_number = [tel_number, number];



        subplot(n_sec,1,i+1)
        plot(f,P1)

        title(strcat("Spectrum of one second of the recording. The number dialed corresponds to: ", tel_number(i+1)))
        xlabel('f (Hz)')
        ylabel('|Y(f)|')

    end

    %% Printing the number
    fprintf(strcat("Hey, I just met you,\nand this is crazy,\nbut here's my number: ", join(tel_number, ""), "\nso call me maybe!"))
   
endfunction   
