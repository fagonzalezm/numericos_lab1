function [raices, errores, iteraciones] = nr(F, x0)
    x0 = cell2mat(x0);
    e1 = 0;
    iteraciones = 0;
    jacobiano = jacobian(F);
    variables = traspuesta(symvar(F));
    raices = [];
    errores = [];
    while true
        iteraciones = iteraciones + 1;
        feval = subs(F, variables, x0);
        jeval = subs(jacobiano, variables, x0);
        jacoInv = inv(jeval);
        x1 = eval(x0 - (jacoInv * (feval')));
        raices = [raices , x1];
        e1 = norm(x1 - x0, inf)/norm(x1, inf);
        errores = [errores e1];
        x0 = x1;
        if(e1 == 0)
            break;
        end        
    end
end

