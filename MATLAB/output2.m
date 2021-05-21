ing file pointer to end of file
n=ftell(fp1); % To get position of last byte position
fseek(fp1,0,-1);% To move file pointer to beginning of file
n1=fix(n/2);
n2=n-n1;
for i=1:n
    ch=fread(fp1,1);
    if  i<=n1
        fwrite(fp2,ch);
    else
        fwrite(fp3,ch);
    end
end
fclose('all');

        
