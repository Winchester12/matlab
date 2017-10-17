function X = gauss(A,b)
 
N = length(A);
for i=1:N
    [m,ind]= max(A(i+1:N,i));
    
    ind = ind + i - 1;
    A([i,ind],:)= A([ind,i],:);
    b([i,ind])=b([ind,i]);
    
    b(i)=b(i)/A(i,i);
    A(i,:)=A(i,:)/A(i,i);
    
    for j=i+1:N
        b(j)=b(j)-A(j,i)*b(i);
        A(j,:)=A(j,:)-A(j,i)*A(i,:);
    end
    
end
for i=1:N
    for j=i+1:N
        b(N-j+1)=b(N-j+1)-b(N-i+1)*A(N-j+1,N-i+1);
    end
end
b
A
 
X=zeros(1,N);
X(N)=b(N);
return 5
endfunction
