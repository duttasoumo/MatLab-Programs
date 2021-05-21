%function [a,id,n]=insertion(a,id,n) : Function to sort data using
%insertion sort method
function [a,id,n]=insertion(a,id,n)
for i=2:n
    t1=a(i);
    t2=id(i);
    j=i-1;
    while j>=1 && t1<a(j)
        a(j+1)=a(j);
        id(j+1)=id(j);
        j=j-1;
        for k=1:n
            fprintf('a(%d)=%d id(%d)=%d\n',k,a(k),k,id(k));
        end
    choice=input('\nPress enter key--->','s');
    end
    a(j+1)=t1;
    id(j+1)=t2;
       for k=1:n
            fprintf('a(%d)=%d id(%d)=%d\n',k,a(k),k,id(k));
       end
    choice=input('\nPress enter key--->','s');
end
end

