function b = QRhausholder2(n, M, M1, M2, b)//b
    sumMultB = 0;
    for j=1:n-1
        for i = j:n
            sumMultB = sumMultB + M(i,j)*b(i);
        end
        teta = sumMultB/M1(j);
        for i = j:n
            b(i) = b(i) - teta*M(i,j);
        end   
    end 
    return b;
endfunction
