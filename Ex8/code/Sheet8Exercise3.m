% FASP - Sheet7 - Giulia Baldini, Luis Fernandes, Agustin Vargas

load('random_signal.mat')

time = linspace(0,length(signal)/Fs,length(signal));

smp_signal = signal(1:Fs:end);
smp_time = time(1:Fs:end);

subplot(3,1,1)
hold on
plot(time, signal)
plot(smp_time, smp_signal, 'ro')
title('Original signal and sampled version')
ylabel('Amplitude')
xlabel('Time')
hold off

rec_sign = zeros(1,length(signal));

subplot(3,1,2)
title('Synthesis functions, i.e., sinc functions')
ylabel('Amplitude')
xlabel('Time')
hold on

for i = 1:length(smp_signal)
    synth = smp_signal(i) * sinc(time - (i-1));
    rec_sign = synth + rec_sign;
    plot(time, synth)
    
end
hold off

subplot(3,1,3)
plot(time,rec_sign)
title('Reconstruction of the continuous signal')
ylabel('Amplitude')
xlabel('Time')