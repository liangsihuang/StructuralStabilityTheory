% 势能和转角的关系曲线
lambda=0.4;%荷载有关的参数
phy=-pi/2:0.01:pi/2;%转角
pe=1/2*sin(phy).^2-lambda*(1-cos(phy));%势能
plot(phy,pe);
hold on

lambda=1.0;%荷载有关的参数
phy=-pi*2/3:0.01:pi*2/3;%转角
pe=1/2*sin(phy).^2-lambda*(1-cos(phy));%势能
plot(phy,pe,'r');

lambda=1.2;%荷载有关的参数
phy=-pi*2/3:0.01:pi*2/3;%转角
pe=1/2*sin(phy).^2-lambda*(1-cos(phy));%势能
plot(phy,pe,'g');

xlabel('\theta');
ylabel('\pi /cl^2');
title('势能-位移曲线');