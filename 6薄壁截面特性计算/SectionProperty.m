function [xc,yc,A]=SectionProperty()
[xc,yc]=Centroid(node,element);
A=Area(node,element);

end




function [xc,yc]=Centroid(node,element)
[n,~]=size(element);
A=0;
temp1=0;
temp2=0;
for i=1:n
    node1=element(i,1);
    node2=element(i,2);
    dx=node(node2,1)-node(node1,1);
    dy=node(node2,2)-node(node1,1);
    l=sqrt(dx^2+dy^2);
    xe=1/2*(node(node2,1)+node(node1,1));
    ye=1/2*(node(node2,2)-node(node1,1));
    t=element(i,3);
    a=l*t;
    A=A+a;
    temp1=temp1+a*xe;
    temp2=temp2+a*ye;
end
xc=temp1/A;
yc=temp2/A;
end

function A=Area(node,element)
A=0;
[n,~]=size(element);
for i=1:n
    node1=element(i,1);
    node2=element(i,2);
    dx=node(node2,1)-node(node1,1);
    dy=node(node2,2)-node(node1,1);
    l=sqrt(dx^2+dy^2);
    t=element(i,3);
    A=A+l*t;
end
end

