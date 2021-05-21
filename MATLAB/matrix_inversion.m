%function [x,n]=matrix_inversion(a,b,n) : Function to get roots of
%simultaneous equations using matrix inversion method
function [x,n]=matrix_inversion(a,b,n)
%To create augmented matrix
for i=1:n
    for j=1:n
        aug(i,j)=a(i,j);
        if i==j
            aug(i,j+n)=1;
        else
            aug(i,j+n)=0;
        end
    end
end
% To display initial augmentedt matrix
n1=2*n;
fprintf('\nElements in Initial augmented matrix--->\n');
for i=1:n
    for j=1:n1
        fprintf('%6.3f\t',aug(i,j));
    end
    fprintf('\n');
end
% To modify augmented matrix
for i=1:n
    am=aug(i,i);
    for j=1:n1
        aug(i,j)=aug(i,j)/am;
    end
    for j=1:n
        if i~=j
        am=aug(j,i);
        for k=1:n1
            aug(j,k)=aug(j,k)-aug(i,k)*am;
        end
        end
      fprintf('\nElements in Modified augmented matrix--->\n');
        for i1=1:n
            for j1=1:n1
            fprintf('%6.3f\t',aug(i1,j1));
            end
            fprintf('\n');
        end 
        ch=input('\nPress enter key to continue--->\n','s');
    end
end
% to extract inverse matrix
    for i=1:n
        for j=1:n
            inverse(i,j)=aug(i,j+n);
        end
    end
    %To obtain all roots
    for i=1:n
        s=0;
        for j=1:n
            s=s+inverse(i,j)*b(j);
        end
        x(i)=s;
    end
    % To display roots of simultaneous equations
        fprintf('\nRoots of simultaneous equations are--->\n');
        for i=1:n
            fprintf('x(%d)=%7.3f\n',i,x(i));
        end
end
