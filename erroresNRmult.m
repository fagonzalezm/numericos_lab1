function erroresNRmult(errores1,errores2)
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'all');

% Create plot
plot([errores1],'-ob','MarkerSize',5,'MarkerFaceColor','b'); hold on;
plot([errores2],'-*r','MarkerSize',5,'MarkerFaceColor','r'); hold on;

title('Errores de la función')
ylabel('Errores') % y-axis label
xlabel('Iteraciones') % x-axis label

legend('NR con jacobian de Matlab', 'NR con jacobiano implementado')
end

