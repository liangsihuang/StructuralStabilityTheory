clc;
clear;

%1��ȡ���ݣ���ʼλ��ȱ��5mm
[fileID,message]=fopen('load_disp5mm.txt','r');  %fileID�Ǹ��������������������Ϊ-1
if fileID==-1
   disp(message);
end
%��������Ϊfloat���ָ���Ϊ�ո�
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
displacement=data{1};
load=data{2};
%��ͼ
plot(displacement,load);
grid on
xlabel('λ��');
ylabel('����');
title('����-λ������');

%2��ȡ���ݣ���ʼλ��ȱ��-5mm
[fileID,message]=fopen('load_disp-5mm.txt','r');  %fileID�Ǹ��������������������Ϊ-1
if fileID==-1
   disp(message);
end
%��������Ϊfloat���ָ���Ϊ�ո�
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
displacement2=data{1};
load2=data{2};
%��ͼ
hold on
plot(displacement2,load2,'r');

% %3��ȡ���ݣ���ʼλ��ȱ��-10mm
% [fileID,message]=fopen('load_disp-10mm.txt','r');  %fileID�Ǹ��������������������Ϊ-1
% if fileID==-1
%    disp(message);
% end
% %��������Ϊfloat���ָ���Ϊ�ո�
% data=textscan(fileID,'%f %f','Delimiter',' '); 
% fclose(fileID);
% displacement3=data{1};
% load3=data{2};
% %��ͼ
% hold on
% plot(displacement3,load3,'r');

% %4��ȡ���ݣ���ʼλ��ȱ��-20mm
% [fileID,message]=fopen('load_disp-20mm.txt','r');  %fileID�Ǹ��������������������Ϊ-1
% if fileID==-1
%    disp(message);
% end
% %��������Ϊfloat���ָ���Ϊ�ո�
% data=textscan(fileID,'%f %f','Delimiter',' '); 
% fclose(fileID);
% displacement4=data{1};
% load4=data{2};
% %��ͼ
% hold on
% plot(displacement4,load4,'g');