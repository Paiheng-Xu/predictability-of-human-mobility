function [ delta, find ] = SeqMatch( seq,i,mode )
%SEQMATCH �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(seq);
str = seq(1:(i-1));
len = 0;
k = 1;
find = 1;
while (~isempty(k))
    if(i+len >n)
        find = 0;
        if mode ==1 
            delta = 0;
        elseif mode == 2
            delta = len+1;
        elseif mode == 3
            delta = n+1;
        end
        break;
    end
    pattern = seq(i:(i+len));
    k = FindUnmatched(str,pattern);
    if (~isempty(k))
        len = len + 1;
    end
    delta = len + 1;
    
end
% if ( len == n-i+1 )  %���Ե����Խ���ʱ�临�Ӷ�
%     delta = n+1;  %�����ֲ��ԣ�����ʦ���õ��Ƿ��� ȫ������+1
% end
end

