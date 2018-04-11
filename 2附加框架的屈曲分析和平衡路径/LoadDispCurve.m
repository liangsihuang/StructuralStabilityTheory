clc;
clear;

%1读取数据，初始位移缺陷5mm
[fileID,message]=fopen('load_disp5mm.txt','r');  %fileID是个非零的正数，读不出来为-1
if fileID==-1
   disp(message);
end
%数据类型为float，分隔符为空格
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
displacement=data{1};
load=data{2};
%作图
plot(displacement,load);
grid on
xlabel('位移');
ylabel('荷载');
title('荷载-位移曲线');

%2读取数据，初始位移缺陷-5mm
[fileID,message]=fopen('load_disp-5mm.txt','r');  %fileID是个非零的正数，读不出来为-1
if fileID==-1
   disp(message);
end
%数据类型为float，分隔符为空格
data=textscan(fileID,'%f %f','Delimiter',' '); 
fclose(fileID);
displacement2=data{1};
load2=data{2};
%作图
hold on
plot(displacement2,load2);

% %3读取数据，初始位移缺陷-10mm
% [fileID,message]=fopen('load_disp-10mm.txt','r');  %fileID是个非零的正数，读不出来为-1
% if fileID==-1
%    disp(message);
% end
% %数据类型为float，分隔符为空格
% data=textscan(fileID,'%f %f','Delimiter',' '); 
% fclose(fileID);
% displacement3=data{1};
% load3=data{2};
% %作图
% hold on
% plot(displacement3,load3,'r');

% %4读取数据，初始位移缺陷-20mm
% [fileID,message]=fopen('load_disp-20mm.txt','r');  %fileID是个非零的正数，读不出来为-1
% if fileID==-1
%    disp(message);
% end
% %数据类型为float，分隔符为空格
% data=textscan(fileID,'%f %f','Delimiter',' '); 
% fclose(fileID);
% displacement4=data{1};
% load4=data{2};
% %作图
% hold on
% plot(displacement4,load4,'g');