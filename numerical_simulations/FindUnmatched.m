function [ index ] = FindUnmatched( str, pattern )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n = length(str);
m = length(pattern);
count = 1;
find = 0;
for i = 1:n
    if (i+m)>n
        break;
    end
    if str(i:(i+m-1)) == pattern
        index(count) = i;
        find = 1;
        %         count = count + 1;
        break;
    end
end

if find == 0
    index = [];

end

