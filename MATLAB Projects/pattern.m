clc;
clear;
fullpath1=input('File In Path: ','s');
fullpath2=input('File Out Path: ','s');
pat=input('PatternSearch: ','s');
n=length(pat);
pat2=input('PatternReplace: ','s');
c=0;

file =fopen(fullpath1);
fileID=fread(file);
fileID=uint8(fileID);
fout=fopen(fullpath2,'w');
i=uint32(1);
sizeF=ftell(file);
while i < sizeF-n
    s=char(fileID(i:n+i-1));
    str='';
    for j=1:size(s)
        str=strcat(str,s(j,1));
    end
    if(strcmp(str,pat)==1)
            fwrite(fout,pat2);
            i=i+n;
            c=c+1;
        else
            fwrite(fout,fileID(i));
            i=i+1;
    end
end
fwrite(fout,fileID(i:sizeF));
fclose('all');
