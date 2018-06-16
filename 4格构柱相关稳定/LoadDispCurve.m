clc;clear;
% 情况1：整体缺陷8mm
[fileID,message]=fopen('imperfection-8mm.txt','r');  %fileID是个非零的正数，读不出来为-1
%数据类型为float，分隔符为空格
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
displacement=data{1};
load=data{2};
%作图
plot(displacement,load);
grid on
xlabel('位移(mm)');
ylabel('荷载(N)');
title('荷载-位移曲线');
[max,loc]=findpeaks(load);
hold on
plot(displacement(loc),max,'o');
text(displacement(loc),max+1e6,mat2str(max),'FontSize',8,'Color','blue');

% 作理想屈曲临界荷载
pcr=38648040;
y=ones(length(displacement),1)*pcr;
plot(displacement,y,'r');
text(10,37000000,['一阶屈曲临界荷载',mat2str(pcr)],'FontSize',8,'Color','red');

% 情况2：整体缺陷32mm
[fileID,message]=fopen('imperfection-32mm.txt','r');  %fileID是个非零的正数，读不出来为-1
%数据类型为float，分隔符为空格
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
displacement=data{1};
load=data{2};
%作图
plot(displacement,load,'k');
grid on
[max,loc]=findpeaks(load);
hold on
plot(displacement(loc),max,'ko');
text(displacement(loc),max+1e6,mat2str(max),'FontSize',8,'Color','black');

