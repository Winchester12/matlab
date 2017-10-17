function y = Gaussa_new(a, n, m)
    for i = 1:n
        for j = i:n                
             if (j ~= i) z = (-1)*a(j, i) / a(i, i);
             else z = a(i, i);
            end 
             if (z ~= 0)
                 for k = i:m
                     if (j == i)  a(j, k) = a(j, k) / z; 
                     else a(j, k) = a(j, k) + a(i, k) * z;
                 end
              end   
            end
          end
    end 
                          
    for i = n:(-1):1               
        x(i) = a(i,m);
        for j = n:(-1):(i+1)
        x(i) = x(i) - a(i, j) * x(j);
        end
    end
    y = x
    return y
endfunction
