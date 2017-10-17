function b = QRhausholder3(n, M, M2, b)//b
    for i = 1:n
        b(n) = b(n)/M2(n)
    end
    sumMB=0;
    for j = i+1:n
        sumMB = M(i,j)*b(j);
    end
    for i = n-1:-1:1
        if M2(i) == 0 then
            M2(i) = 0.000001;
        end
        b(i)=(b(i) - sumMB)/M2(i);
    end
    return b;
endfunction
