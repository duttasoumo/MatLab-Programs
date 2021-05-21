function stegenographyDecode(fullpath1,fullpath2)
tic
x=imread(fullpath1);
[m,n,d]=size(x);
flag=0;
FileID=fopen(fullpath2,'wt');
for i=1:m
    for j=1:n
        R=x(i,j,1);
        G=x(i,j,2);
        B=x(i,j,3);
        strR = dec2bin(R,8);
        strG = dec2bin(G,8);
        strB = dec2bin(B,8);
       byte=uint8(bin2dec(strcat(strR(7:8),strG(6:8),strB(6:8))));
        fwrite(FileID,byte,'uint8');
        if(byte==0 || byte==26)
            flag=1;
            break;
        end
    end
    if(flag==1)
        break;
    end
end;
fclose('all');
toc