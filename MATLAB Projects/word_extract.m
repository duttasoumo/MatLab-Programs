clc;
clear;
close all;
file1=input(' Enter the name of the input file ','s');
file2=input(' Enter the name of the output file ','s');
fid1=fopen(file1,'r');
fid1=upper(fid1);
fseek(fid1,0,1);
n=ftell(fid1);
fseek(fid1,0,-1);
count=1;
i=1;
j=1;
while(count<=n)
    ch=fread(fid1,1);
    count=count+1;
    if ch~=32 && ch~=10
        ar(i,j)=char(ch);
        j=j+1;
    else
        i=i+1;
        j=1;
    end
end
celldata=cellstr(ar);
disp(celldata);
fprintf('\n \n The sorted array');
celldata=sortrows(celldata(:,1),1);
disp(celldata);


