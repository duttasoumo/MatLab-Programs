%q71as2.m : Write a program to copy content of one file to another file
clc;
close all;
clear all;
file1=input('\nEnter Input File Name=','s');
file2=input('Enter Output File Name=','s');
fp1=fopen(file1,'r');
fp2=fopen(file2,'w');
fseek(fp1,0,1); %Move File identifief to last byte
n=ftell(fp1); % To position of last byte
fseek(fp1,0,-1);% To move file identifier to 1st byte
for i=1:n
    ch=fread(fp1,1);
    fwrite(fp2,ch);
end
fclose('all');
fprintf('\nSize of <%s>=%d Bytes\n',file1,n);
%End of program


