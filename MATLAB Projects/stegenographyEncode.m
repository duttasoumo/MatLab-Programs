function stegenographyEncode(fullpath1,fullpath2,fullpath3)
tic;
x=imread(fullpath1);
[m,n,d]=size(x);
file =fopen(fullpath2);
fileID=fread(file);
fseek(file,0,1); %Move File identifief to last byte
sz=ftell(file); % To position of last byte
fseek(file,0,-1);% To move file identifier to 1st byte
c=1;
a=uint8(zeros(m,n,3));
for i=1:m
    for j=1:n 
        R=x(i,j,1);
        G=x(i,j,2);
        B=x(i,j,3);
        if(c<=sz(1))
        Byte = fileID(c);
        c=c+1;
        strF = dec2bin(Byte,8);
        strR = dec2bin(R,8);
        strG = dec2bin(G,8);
        strB = dec2bin(B,8);

        strR=strcat(strR(1:6),strF(1:2));
        strG=strcat(strG(1:5),strF(3:5));
        strB=strcat(strB(1:5),strF(6:8));
        nR=uint8(bin2dec(strR));
        nG=uint8(bin2dec(strG));
        nB=uint8(bin2dec(strB));
        else
            nR=R;
            nB=B;
            nG=G;
        end
        a(i,j,1)=nR;
        a(i,j,2)=nG;
        a(i,j,3)=nB;
    end
    
end
imwrite(a,fullpath3);
toc
