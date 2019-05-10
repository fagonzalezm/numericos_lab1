function [raices, errores, iteraciones] = nr2(F,x0)
    iteraciones = 0;
    raices = [];
    errores = [];
    while true
        iteraciones = iteraciones + 1;
        F2 = [F{:}];
        feval = F2(x0{:});
        jeval= jacobiano(F,x0);
        jacoInv = inversa(jeval);
        x1 = eval(x0 - (jacoInv * (feval')));
        raices = [raices , x1];
        x00 = cell2mat(x0);
        e1 = norm(x1 - x00, inf)/norm(x1, inf);
        errores = [errores e1];
        x0 = x1;
        x0 = num2cell(x0);
        if(e1 == 0)
            break;
        end        
    end
end


