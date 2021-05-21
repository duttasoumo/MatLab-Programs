tic
clc;
clear;
x=imread('mini.jpg');
[m,n,d]=size(x);
a=uint8(zeros(m,n,d));
b=uint8(zeros(m,n,d));
for i=1:m
    for j=1:n
        R=x(i,j,1);
        G=x(i,j,2);
        B=x(i,j,3);
        Y=  0.2989 * R + 0.5870 * G + 0.1140 * B;
        a(i,j,1)=Y;a(i,j,2)=Y;a(i,j,3)=Y;
        if(Y>=126)
            Y=255;
        else
            Y=0;
        end
        b(i,j,1)=Y;b(i,j,2)=Y;b(i,j,3)=Y;
    end
end

image(g);
imwrite(a,'E:\\MATLAB Projects\gray.jpg');
imwrite(b,'E:\\MATLAB Projects\bw.jpg');
toc;