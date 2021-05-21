clc;
clear;
x=imread('pengu.png');
[m,n,d]=size(x);
r=1;
a=uint8(zeros(m*2,n*2,d));
for i=1:m
    c=1;
    for j=1:n
       P(1:d)=x(i,j,1:d);
       for k=r:r+1
           for l=c:c+1
                a(k,l,1:d)=P(1:d);
           end
       end
       c=c+2;
    end
    r=r+2;
end

image(a);
imwrite(a,'E:\\MATLAB Projects\resDouble2.jpg');