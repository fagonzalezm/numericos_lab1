% % % % % % % % % % % % % % % % % % % % % % %
% % % % % % % % % ACTIVIDAD 1 % % % % % % % %
% % % % % % % % % % % % % % % % % % % % % % %

%Preparación del método
syms f(x,y,z) g(x,y,z) h(x,y,z)
f(x,y,z) = x^2 + y -37;
g(x,y,z) = x - y^2 - 5;
h(x,y,z) = x + y + z -3;
x0 = {0;0;0};
variables = [x y z];

%Método usando la función jacobian de matlab
F1 = [f g h];
tic
[raices1, errores1, iteraciones1] = nr(F1, x0);
tNr1 = toc;

%Método usando jacobiano implementado
% F2 = {f g h};
% tic
% [raices2, errores2, iteraciones2] = nr2(F2, x0);
% tNr2 = toc;

%Gráficos
graficarNRmult(raices1,'NR con jacobian de Matlab');
% graficarNRmult(raices2,'NR sin jacobian implementado');
% erroresNRmult(errores1,errores2);

cd 'data'
save raicesNRmult1.dat raices1 -ASCII -TABS;
save raicesNRmult2.dat raices2 -ASCII -TABS;
save erroresNRmult1.dat errores1 -ASCII -TABS;
save erroresNRmult2.dat errores2 -ASCII -TABS;
save iteracionesNRmult1.dat iteraciones1 -ASCII -TABS;
save iteracionesNRmult2.dat iteraciones2 -ASCII -TABS;
save tiempoNRmult1.dat tNr1 -ASCII -TABS;
save tiempoNRmult2.dat tNr2 -ASCII -TABS;

cd '../'


% % % % % % % % % % % % % % % % % % % % % % %
% % % % % % % % % ACTIVIDAD 2 % % % % % % % %
% % % % % % % % % % % % % % % % % % % % % % %


% % % % % % % % % SISTEMA 289 % % % % % % % % %

A = load('A289.dat');
b = load('b289.dat');

%Métodos iterativos
tol = 10^-15;
tic,
[xGJ289, eGJ289] = gaussJacobi(A,b,tol);
tiempoGJ289 = toc;
tic,
[xGS289, eGS289] = gaussSeidel(A,b,tol);
tiempoGS289 = toc;

%Métodos directos
tic,
[xD289] = doolittle(A,b);
tiempoD289 = toc;
tic,
[xCh289] = cholesky(A,b);
tiempoCh289 = toc;
tic
[xQR289] = QR(A,b);
tiempoQR289 = toc;
tic,
[xG289] = givens(A,b);
tiempoG289 = toc;
tic,
[xH289] = householder(A,b);
tiempoH289 = toc;

%Gráficos
graficarSEit(xGJ289,xGS289,'Método iterativo sistema 289');
graficarSE(xD289,xCh289,xQR289,xG289,xH289, 'Método directo sistema 289');
graficarErroresIt(eGJ289,eGS289, 'Error métodos iterativos sistema 289');

cd 'data'
save xGJ289.dat xGJ289 -ASCII -TABS;
save eGJ289.dat eGJ289 -ASCII -TABS;
save tiempoGJ289.dat tiempoGJ289 -ASCII -TABS;

save xGS289.dat xGS289 -ASCII -TABS;
save eGS289.dat eGS289 -ASCII -TABS;
save tiempoGS289.dat tiempoGS289 -ASCII -TABS;

save xD289.dat xD289 -ASCII -TABS;
save tiempoD289.dat tiempoD289 -ASCII -TABS;

save xCh289.dat xCh289 -ASCII -TABS;
save tiempoCh289.dat tiempoCh289 -ASCII -TABS;

save xQR289.dat xQR289 -ASCII -TABS;
save tiempoQR289.dat tiempoQR289 -ASCII -TABS;

save xG289.dat xG289 -ASCII -TABS;
save tiempoG289.dat tiempoG289 -ASCII -TABS;

save xH289.dat xH289 -ASCII -TABS;
save tiempoH289.dat tiempoH289 -ASCII -TABS;

cd '../'

% % % % % % % % % SISTEMA 1089 % % % % % % % % %

A = load('A1089.dat');
b = load('b1089.dat');

%Métodos iterativos
tol = 10^-15;
tic,
[xGJ1089, eGJ1089] = gaussJacobi(A,b,tol);
tiempoGJ1089 = toc;
tic,
[xGS1089, eGS1089] = gaussSeidel(A,b,tol);
tiempoGS1089 = toc;

%Métodos directos
tic,
[xD1089] = doolittle(A,b);
tiempoD1089 = toc;
tic,
[xCh1089] = cholesky(A,b);
tiempoCh1089 = toc;
tic
[xQR1089] = QR(A,b);
tiempoQR1089 = toc;
tic,
[xG1089] = givens(A,b);
tiempoG1089 = toc;
tic,
[xH1089] = householder(A,b);
tiempoH1089 = toc;

%Gráficos
graficarSEit(xGJ1089,xGS1089,'Método iterativo sistema 1089');
graficarSE(xD1089,xCh1089,xQR1089,xG1089,xH1089, 'Método directo sistema 1089');
graficarErroresIt(eGJ1089,eGS1089, 'Error métodos iterativos sistema 1089');

cd 'data'
save xGJ1089.dat xGJ1089 -ASCII -TABS;
save eGJ1089.dat eGJ1089 -ASCII -TABS;
save tiempoGJ1089.dat tiempoGJ1089 -ASCII -TABS;

save xGS1089.dat xGS1089 -ASCII -TABS;
save eGS1089.dat eGS1089 -ASCII -TABS;
save tiempoGS1089.dat tiempoGS1089 -ASCII -TABS;

save xD1089.dat xD1089 -ASCII -TABS;
save tiempoD1089.dat tiempoD1089 -ASCII -TABS;

save xCh1089.dat xCh1089 -ASCII -TABS;
save tiempoCh1089.dat tiempoCh1089 -ASCII -TABS;

save xQR1089.dat xQR1089 -ASCII -TABS;
save tiempoQR1089.dat tiempoQR1089 -ASCII -TABS;

save xG1089.dat xG1089 -ASCII -TABS;
save tiempoG1089.dat tiempoG1089 -ASCII -TABS;

save xH1089.dat xH1089 -ASCII -TABS;
save tiempoH1089.dat tiempoH1089 -ASCII -TABS;

cd '../'



% % % % % % % % % % SISTEMA 4225 % % % % % % % % %

A = load('A4225.dat');
b = load('b4225.dat');

%Métodos iterativos
tol = 10^-15;
tic,
[xGJ4225, eGJ4225] = gaussJacobi(A,b,tol);
tiempoGJ4225 = toc;
tic,
[xGS4225, eGS4225] = gaussSeidel(A,b,tol);
tiempoGS4225 = toc;

%Métodos directos
tic,
[xD4225] = doolittle(A,b);
tiempoD4225 = toc;
tic,
[xCh4225] = cholesky(A,b);
tiempoCh4225 = toc;
tic
[xQR4225] = QR(A,b);
tiempoQR4225 = toc;
tic,
[xG4225] = givens(A,b);
tiempoG4225 = toc;
tic,
[xH4225] = householder(A,b);
tiempoH4225 = toc;

%Gráficos
graficarSEit(xGJ4225,xGS4225,'Método iterativo sistema 4225');
graficarSE(xD4225,xCh4225,xQR4225,xG4225,xH4225, 'Método directo sistema 4225');
graficarErroresIt(eGJ4225,eGS4225, 'Error métodos iterativos sistema 4225');

cd 'data'
save xGJ4225.dat xGJ4225 -ASCII -TABS;
save eGJ4225.dat eGJ4225 -ASCII -TABS;
save tiempoGJ4225.dat tiempoGJ4225 -ASCII -TABS;

save xGS4225.dat xGS4225 -ASCII -TABS;
save eGS4225.dat eGS4225 -ASCII -TABS;
save tiempoGS4225.dat tiempoGS4225 -ASCII -TABS;

save xD4225.dat xD4225 -ASCII -TABS;
save tiempoD4225.dat tiempoD4225 -ASCII -TABS;

save xCh4225.dat xCh4225 -ASCII -TABS;
save tiempoCh4225.dat tiempoCh4225 -ASCII -TABS;

save xQR4225.dat xQR4225 -ASCII -TABS;
save tiempoQR4225.dat tiempoQR4225 -ASCII -TABS;

save xG4225.dat xG4225 -ASCII -TABS;
save tiempoG4225.dat tiempoG4225 -ASCII -TABS;

save xH4225.dat xH4225 -ASCII -TABS;
save tiempoH4225.dat tiempoH4225 -ASCII -TABS;

cd '../'


