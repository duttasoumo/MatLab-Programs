function a=bubsort(a,n)
for i=1:n-1
    for j=1:n-i
        if a(j)>a(j+1)
            temp=a(j);
            a(j)=a(j+1);
            a(j+1)=temp;
        end
    end 
end
end

         