function [ entropy, delta ] = EstEntropy_revised( seq ,mode )
%ESTENTROPY_REVISED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
sum_delta = 1;
n = length(seq);
sum_find = 0;
delta(1) = 1;

for i = 2:n
    [delta(i,1),find] = SeqMatch(seq,i,mode);
    sum_delta = sum_delta + delta(i);
    sum_find = sum_find + find;
end

entropy = (((1/n)*sum_delta)^(-1))*log2(n);

delta = sum_delta/n;
end

