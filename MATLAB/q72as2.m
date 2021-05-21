%q72as2.m : Write a program to split one file to two files
clc;
close all;
clear all;
file1=input('\nEnter Input File Name=','s');
file2=input('Enter Output File-1 Name=','s');
file3=input('Enter Output File-2 Name=','s');
fp1=fopen(file1,'r');
fp2=fopen(file2,'w');
fp3=fopen(file3,'w');

fseek(fp1,0,1); %Move File identifief to last byte
n=ftell(fp1); % To position of last byte
fseek(fp1,0,-1);% To move file identifier to 1st byte
n1=fix(n/2);
for i=1:n
    ch=fread(fp1,1);
    if i<=n1
    fwrite(fp2,ch);
    else
    fwrite(fp3,ch);
    end
end
fclose('all');
fprintf('\nSize of <%s>=%d Bytes\n',file1,n);
%End of program


