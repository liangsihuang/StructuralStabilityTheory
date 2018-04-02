# StructuralStabilityTheory

结构稳定理论的课程作业。


SAP2000屈曲分析：注意如果不计自重，要把load pattern里的self weight multiplier改为0
SAP2000可以通过修改结构的未变形几何形状引入初始几何缺陷：Analyse-modify undeformed geometry，其中可以跟据第一屈曲模态定义初始缺陷（一致模态法）  
但是，这个功能只有V17以后的版本才有！

非线性分析中：p-Delta和大变形有什么区别？
SAP2000中的P-Delta只是根据应力（几何刚度）来修改刚度
大变形才是考虑几何变化（几何非线性），是真正的P-Delta
