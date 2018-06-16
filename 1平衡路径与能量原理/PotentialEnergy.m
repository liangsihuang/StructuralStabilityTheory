% ���ܺ�ת�ǵĹ�ϵ����
lambda=0.4;%�����йصĲ���
phy=-pi/2:0.01:pi/2;%ת��
pe=1/2*sin(phy).^2-lambda*(1-cos(phy));%����
plot(phy,pe);
hold on
% ��פֵ
[max,loc1]=findpeaks(pe);
[min,loc2]=findpeaks(-pe);
plot(phy(loc1(1)),max(1),'o');
plot(phy(loc1(2)),max(2),'o');
plot(phy(loc2),min,'o');

lambda=1.0;%�����йصĲ���
phy=-pi*2/3:0.01:pi*2/3;%ת��
pe=1/2*sin(phy).^2-lambda*(1-cos(phy));%����
plot(phy,pe,'r');

lambda=1.2;%�����йصĲ���
phy=-pi*2/3:0.01:pi*2/3;%ת��
pe=1/2*sin(phy).^2-lambda*(1-cos(phy));%����
plot(phy,pe,'g');

xlabel('\theta');
ylabel('\pi /cl^2');
title('����-λ������');

text(1.6,0.05,'\lambda = 0.4','Color','blue','FontSize',8);
text(1.6,-0.4,'\lambda = 1','Color','red','FontSize',8);
text(1.6,-1.2,'\lambda = 1.2','Color','green','FontSize',8);