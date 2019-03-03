function [ entropy ] = EstEntropy( seq,mode )
%ESTENTROPY �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
sum_delta = 0;
n = length(seq);
for i = 2:n
    delta = SeqMatch(seq,i,mode);
    sum_delta = sum_delta + delta;
end
entropy = (((1/n)*sum_delta)^(-1))*log(n);

end

