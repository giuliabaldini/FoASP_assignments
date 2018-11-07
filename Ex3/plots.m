close all

w_set = [sym(1/2) sym(1/3) sym(1/4) sym(1/8)];
colors = ['r' 'g' 'b' 'c'];
n = -10:10;

hold all
for w = 1:length(w_set)
    f = exp(2*sym(pi)*w_set(w)*1i*n);
    plot3(real(f), imag(f), n, colors(w))
    legendText{w} = strcat('f_{', string(w_set(w)),'}(n)');
	
end

xlabel("Real axis")
ylabel("Imaginary axis")
zlabel("n")
legend(legendText);
view(3)