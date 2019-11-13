# StructuralStabilityTheory

如何使用RunAsDate破解SAP2000 V18.2？  
1. 根据SAP2000安装方法.docx，生成lservrc，并复制 （不知是否真的有用）
2. 运行RunAsDate，取消 Move the time forward according to the real time，勾选Immediate Mode
3. 修改绝对时间为2016/12/1，太早太晚都不行


同样，用RunAsDate破解Perform3d v7:
1. 下载非x64的runasdate
2. 用kg(key generator)生成lservrc，复制到exe的目录下
3. 运行RunAsDate，保持默认（Move the time forward according to the real time）
4. 修改绝对时间为2019/1/1（因为破解文件2019/1/31到期，可以打开lservrc查看到期时间）

同样，用RunAsDate破解Etabs2015:
1. 按照安装说明操作
2. 运行RunAsDate（x64)，勾选Move the time forward according to the real time，而不勾选Immediate Mode
3. 修改绝对时间为2016/1/1（可以打开lservrc查看到期时间）
