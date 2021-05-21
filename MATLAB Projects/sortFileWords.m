clc;
clear;
fullpath1=input('File In Path: ','s');
fullpath2=input('File Out Path: ','s');
file=fopen(fullpath1,'r');
fout=fopen(fullpath2,'w');
fread(file,1)
fseek(file,0,1);
sz=ftell(file);
fseek(file,0,-1);
% n=ftell(fp1);
str='';
for i=1:sz
    ch=fread(file,1);
    if(ch~=' ')
        str=strcat(str,ch);
    else
        x=sort(char(str));
        fwrite(fout,x);
        fwrite(fout,ch);
        str='';
    end
end
x=sort(char(str));
fwrite(fout,x);
fclose('all');