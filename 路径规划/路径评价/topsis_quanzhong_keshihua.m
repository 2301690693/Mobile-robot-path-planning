clc;clear
% load date_file;
A=cell2mat(struct2cell(load('en2.mat')));
[r,c]=size(A);
disp(['����' num2str(r) '�����۶���' num2str(c) '������ָ��'])
judge=input(['��' num2str(c) '��ָ���Ƿ���Ҫ���򻯴�����Ҫ������1������Ҫ������0��']);
judge1=input('ָ���Ƿ���Ҫ��Ȩ����Ҫ������1������Ҫ������0.');
if judge1==1
    w=input('�������ָ��Ȩ�أ������������룺');
else
    w=ones(1,c)./c;
end
% ����
if judge==1
    position=input('��������Ҫ�����ָ�������У�������Ҫ����1��2��3��������[1,2,3]:');
    disp('��������Ҫ����ָ�������е����ͣ����� 1��Ϊ��С�� 2��Ϊ�м��� 3��Ϊ������')
    type=input('���磺��1�����м��ͣ���2���������ͣ���3���Ǽ�С��ʱ����[2,3,1]');
    for i=1:1:size(position,2)
        A(:,position(i))=Positivization(A(:,position(i)),type(i));
    end
    disp('���򻯺�ľ���ΪA=')
    disp(A)
end
% ��׼��
Z=A./repmat(sum(A.*A).^(1/2),r,1);
disp('��������׼�������Z= ')
disp(Z)
% ����÷ֲ���һ��
D_PPP=sum(((repmat(max(Z),r,1)-Z).^2).*repmat(w,r,1),2).^1/2;
D_ddd=sum(((repmat(min(Z),r,1)-Z).^2).*repmat(w,r,1),2).^1/2;
S=D_ddd./(D_PPP+D_ddd);
disp('��һ���÷�Ϊ��')
S_norm=S/sum(S)
[sort_S,index]=sort(S_norm,'descend')


    
    