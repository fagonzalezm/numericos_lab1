function [soluciones, errores] = gaussSeidel(A, b, tol)
    [M N] = size(A);
    D = zeros(M, N);
    E = zeros(M, N);
    F = zeros(M, N);
    aux = 1;
    e = 1;
    for i = 1 : M
       D(i, i) = A(i, i);
       for j = 1 : aux
          E(i, j) = A(i, j); 
          F(j, i) = A(j, i);
       end
       E(i, i) = 0;
       F(i, i) = 0;
       aux = aux + 1;
    end
    x0 = zeros(N ,1);
    soluciones = [];
    errores = [];
    while e > tol
       j = inv(D+E) * -F;
       c = inv(D+E) * b;
       x1 = j*x0 + c;
       e = norm(x1 - x0, inf)/norm(x1, inf);
       soluciones = [soluciones, x1];
       errores = [errores, e];
       x0 = x1;
    end
    xs = x1;
end