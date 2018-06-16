clc;clear;
% ���1������ȱ��8mm
[fileID,message]=fopen('imperfection-8mm.txt','r');  %fileID�Ǹ��������������������Ϊ-1
%��������Ϊfloat���ָ���Ϊ�ո�
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
displacement=data{1};
load=data{2};
%��ͼ
plot(displacement,load);
grid on
xlabel('λ��(mm)');
ylabel('����(N)');
title('����-λ������');
[max,loc]=findpeaks(load);
hold on
plot(displacement(loc),max,'o');
text(displacement(loc),max+1e6,mat2str(max),'FontSize',8,'Color','blue');

% �����������ٽ����
pcr=38648040;
y=ones(length(displacement),1)*pcr;
plot(displacement,y,'r');
text(10,37000000,['һ�������ٽ����',mat2str(pcr)],'FontSize',8,'Color','red');

% ���2������ȱ��32mm
[fileID,message]=fopen('imperfection-32mm.txt','r');  %fileID�Ǹ��������������������Ϊ-1
%��������Ϊfloat���ָ���Ϊ�ո�
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
displacement=data{1};
load=data{2};
%��ͼ
plot(displacement,load,'k');
grid on
[max,loc]=findpeaks(load);
hold on
plot(displacement(loc),max,'ko');
text(displacement(loc),max+1e6,mat2str(max),'FontSize',8,'Color','black');

