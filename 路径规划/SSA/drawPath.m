function drawPath(path,G)
%%%%
% xGrid=size(G,2);
% drawShanGe(G)
hold on
% title('������ȸ�����㷨��դ���ͼ������·���滮')
% set(gca,'XtickLabel',' ')
% set(gca,'YtickLabel',' ')
% xlabel('X����')
% ylabel('Y����')
L=size(path,1);
Sx=path(1,1)-0.5;
Sy=path(1,2)-0.5;
plot(Sx,Sy,'ro','MarkerSize',4,'LineWidth',4);   % ���
for i=1:L-1
    figure(2)
    plot([path(i,2) path(i+1,2)]-0.5,[path(i,1) path(i+1,1)]-0.5,'b+-','LineWidth',1.5,'markersize',4)
    hold on
%     %pause(0.5)
end

Ex=path(end,1)-0.5;
Ey=path(end,2)-0.5;

plot(Ey,Ex,'gs','MarkerSize',4,'LineWidth',4);   % �յ�
