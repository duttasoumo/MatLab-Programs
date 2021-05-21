%xximage11.m : Write a program to convert RGB image to (i) Gray image, (ii)
%B/W image. Concatenate all 3 images and show the target image
clc;
close all;
clear all;
file1=input('\nEnter Input Image File name=','s');
file2=input('Enter Output Gray  Image File name=','s');
file3=input('Enter Output B/W image file name=','s');
file4=input('Enter Output target image file name=','s');
x=imread(file1);
[r,c,d]=size(x);
g(1:r,1:c,1)=.2989*x(1:r,1:c,1)+.587*x(1:r,1:c,2)+.114*x(1:r,1:c,3); % converting RGB to Gray scale
imwrite(g,file2);
%To convert GRAY color image to B/W image
for i=1:r
    for j=1:c
        if g(i,j,1)>=127
            b(i,j,1)=255;
        else
            b(i,j,1)=0;
        end
    end
end
imwrite(b,file3);
% To combine all three images in one image file
y=x;
y(1:r,(c+1):(2*c),1)=g(1:r,1:c,1);
y(1:r,(c+1):(2*c),2)=g(1:r,1:c,1);
y(1:r,(c+1):(2*c),3)=g(1:r,1:c,1);
y(1:r,(2*c+1):(3*c),1)=b(1:r,1:c,1);
y(1:r,(2*c+1):(3*c),2)=b(1:r,1:c,1);
y(1:r,(2*c+1):(3*c),3)=b(1:r,1:c,1);
imshow(y);
imwrite(y,file4);
fprintf('\nr=%d c=%d d=%d\n',r,c,d);


