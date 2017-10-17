function [M1,M2, sing] = QRhausholder(M, n)
    sing=%f;       
    eta = M(1,1);  
    for k=1:n//n
        for i = k:n
            if eta <= abs(M(i,k)) then
                eta = abs(M(i,k))
            end       
        end
        sum=0;
        sumM=0;
        if eta == 0 then
            M1(k)=0;
            M2(k)=0;
            sing=%t;
        else
            for i=k:n
                M(i,k) = M(i,k)/eta
            end
            for i=k:n
                sum = sum +(M(i,k))^2;
            end
            ksi=sign(M(k,k))*sum^(1/2);
            //disp(ksi)
            M(k,k) = M(k,k) + ksi;
            M1(k) = ksi*M(k,k)
            M2(k) = (-1)*eta*ksi;
            for j = k+1:n
                
                for i = k:n
                    sumM = sumM + M(i,k) * M(i,j);
                end
                if M1(k) == 0 then
                    M1(k) = 0.00000001;
                end
                //disp(M1(k));
                teta = sumM/M1(k);
                for i = k:n
                    M(i,j) = M(i,j) - (teta * M(i,k));
                end   
            end
        end
    end
    for ij = 1:n
            if M(ij,ij) == 0 then
                sing = %t;
            end
            M2(ij) = M(ij,ij);
        end
    if sing == %f then
        disp("nevurodzhena");
    end
    //disp("M1:")
    //disp(M1)
    //disp("M2:")
    //disp(M2)
    disp(M)
            disp(sign(M(1,1)))     
endfunction