
function [position_x] = Positivization(x,type)
    if type == 1  %ָ��Ϊ��С��
        position_x = Min2Max(x);  %����Min2Max����������       
    elseif type == 2  %ָ��Ϊ�м���
        best = input('�������м������ֵ�� ');
        position_x = Mid2Max(x,best);%����Mid2Max����������
    elseif type == 3  %ָ��Ϊ������       
        a1 = input('������������½磺 ');
        b1 = input('������������Ͻ磺 '); 
        position_x = Inter2Max(x,a1,b1);%����Inter2Max����������       
    else
        disp('ָ�������������')
    end
end
