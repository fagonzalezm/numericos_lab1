function [fdx] = derivada(f,variable,x0)
%Aproxima la derivada de la funcion f respecto a variable dado un valor x0
%   Entrada:    symfun f
%               sym variable
%               vector x0
%   Salida: symfun fdx
h = 0.00001;
variables = num2cell(symvar(f));
[n2,m2] = size(variables);
valor1 = variables;
valor2 = variables;
for i=1:m2
    if variables{i} == variable
        valor1{i} = x0{:} + h;
        valor2{i} = x0{:} - h;
    end
end
fdx(variables{:}) = (f(valor1{:})-f(valor2{:}))/(2*h);
end

