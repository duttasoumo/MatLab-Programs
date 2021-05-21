tic
clc;
clear;
x1=imread('mini.jpg');
x2=imread('abcd.jpg');
[m,n,d]=size(x1);
a=uint8(zeros(m*2,n*2,d));
r=1;
for i=1:m
    c=1;
    for j=1:n
        a(r,c,1:d)=x1(i,j,1:d);
        a(r+1,c+1,1:d)=x1(i,j,1:d);
        a(r,c+1,1:d)=x2(i,j,1:d);
        a(r+1,c,1:d)=x2(i,j,1:d);
        c=c+2;
    end
    r=r+2;
end

image(a);
imwrite(a,'E:\\MATLAB Projects\merge.bmp');
toc