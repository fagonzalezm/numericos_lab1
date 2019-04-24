function [respuesta] = diagonalDominante(matriz)
%DIAGONALDOMINANTE Summary of this function goes here
%   Detailed explanation goes here
[n,m] = size(matriz)
if n == m
    for i=1:n
        acumulador = 0;
        for j=1:n
            acumulador = acumulador + matriz(i,j);
        end
        acumulador = acumulador - matriz(i,i)
        diagonal = matriz(i,i)
    end
else
    respuesta = false
end
end

