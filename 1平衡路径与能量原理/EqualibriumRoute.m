% % 例题
% % 平衡路径就是处于平衡状态的荷载-位移曲线
% phy=-pi/2:0.01:pi/2;%转角
% lambda=phy./sin(phy);%荷载
% plot(phy,lambda);
% axis([-2 2 0 2]);
% % 画平凡解
% y=0:0.01:2;
% x=zeros(length(y),1);
% hold on
% plot(x,y);
% % 画二阶变分为0的曲线，曲线下方的平衡路径是稳定的
% phy2=-pi/2:0.01:pi/2;%转角
% lambda2=1./cos(phy2);%荷载
% plot(phy2,lambda2,'r');

% 正式作业
clc;clear;
% 例题
% 平衡路径就是处于平衡状态的荷载-位移曲线
phy=-pi/2:0.01:pi/2;%转角
lambda=cos(phy);%荷载
plot(phy,lambda);
axis([-2 2 0 2]);
% 画平凡解
y=0:0.01:2;
x=zeros(length(y),1);
hold on
plot(x,y);
% 画二阶变分为0的曲线，曲线下方的平衡路径是稳定的
phy2=-pi/2:0.01:pi/2;%转角
lambda2=cos(2.*phy2)./cos(phy2);%荷载
plot(phy2,lambda2,'r');

xlabel('\theta');
ylabel('\lambda');
title('荷载-位移曲线');
text(0.8,0.8,'不稳定的平衡路径 \lambda = cos \theta','Color','blue','FontSize',8);
text(0.1,1.2,'不稳定的平衡路径','Color','blue','FontSize',8);
text(-0.3,0.2,'稳定的平衡路径','Color','blue','FontSize',8);
text(-0.7,0.6,'稳定临界面 \lambda =cos2\theta / cos \theta','Color','red','FontSize',8);