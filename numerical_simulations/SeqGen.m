function [ seq ] = SeqGen( n, m, Para)
%SEQGEN �˴���ʾ�йش˺�����ժҪ
%   �������У��������������Ʒ�
%   ����Para��randomΪ�����markovΪ����Ʒ�

seq = ones(n,1);
pool_random = 1:m;
pool_markov = ones(1,n);
pool_norm = ceil(randn(1,4*n))*m;
if (m>=n)
    pool_markov = 1:n;
elseif (m<n)
    for i = 1:n
        if (rem(i,m) == 0)
            pool_markov(1,i) = m;
        else
            pool_markov(1,i) = rem(i,m);
        end
    end
end
if (strcmp(Para,'random'))
    for i=1:n
        seq(i,1) = pool_random(ceil(rand*m));
    end
elseif(strcmp(Para,'markov'))
    for i=1:n
        seq(i,1) = pool_markov(1,i);
    end
elseif(strcmp(Para,'norm'))
    idx = find(pool_norm>=1 & pool_norm<=m);
    seq(:) = pool_norm(idx(1:n));
end


end

