clc;clear
disp('�������жϾ���A=')
A=input('A=');
[n,n]=size(A);
% ����ƽ��ֵ��
C=sum(A,1);
disp('����ƽ��ֵ�������Ȩ��Ϊ:')
one=sum(A./(repmat(C,n,1)),2)./n;
disp(one)
% ����ƽ��ֵ��
D=prod(A,2);
stand_D=D.^(1/n);
disp('����ƽ��ֵ�������Ȩ��Ϊ��')
two=stand_D./sum(stand_D);
disp(two)
% ����ֵ��
[x,z]=eig(A);
max_eig=max(max(z));
[r,c]=find(z==max_eig,1);
disp('����ֵ�������Ȩ��Ϊ��')
three=x(:,c)./(sum(x(:,c)));
disp(three)
% ���ַ����þ�ֵ
disp('���ַ�����ֵΪ��')
disp((one+two+three)/3)
% һ���Լ���
ci=(max_eig-n)/(n-1);
ri=[0 0.0001 0.52 0.89 1.12 1.26 1.36 1.41];
cr=ci/ri(n)
if cr<0.1
    disp('ͨ��һ���Լ���')
else
    disp('ci>=0.1,��ͨ��һ���Լ���')
end

