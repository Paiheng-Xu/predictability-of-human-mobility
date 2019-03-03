function [ p,fval,exitflag ] = Predictability_fsolve( entropy,N )
%PREDICTABILITY_FSOLVE �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��


syms x

fun = @(x)(-(x.*log2(x)+(1-x).*log2(1-x))+(1-x).*log2(N-1)-entropy);

try
    [p,fval,exitflag] = fsolve(fun,0.2);
    if exitflag == -2 || p<(1/N)
        [p,fval,exitflag] = fsolve(fun,0.3);
        if exitflag == -2 || p<(1/N)
            [p,fval,exitflag] = fsolve(fun,0.4);
            if exitflag == -2 || p<(1/N)
                [p,fval,exitflag] = fsolve(fun,0.5);
                if exitflag == -2 || p<(1/N)
                    [p,fval,exitflag] = fsolve(fun,0.7);
                    if exitflag == -2 || p<(1/N)
                        [p,fval,exitflag] = fsolve(fun,0.9);
                    end
                end
            end
        end
    end
catch
    p=0;
    fval = 0;
    exitflag = -2;
end
    
    
end

