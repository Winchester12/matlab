function w = polynom(n, y, x)
    //y = array of znachen 
    //n = array of vyzliv 
    //x = tochka v yakiy shukayemo
    //prod(..) добуток
    p = 0;
    for i = 1:length(n)
        lb = []
        for j = 1:length(n)
            if i ~= j then
                lb(j) = ((x - n(j))/(n(i) - n(j)));
            else
                lb(j) = 1; 
            end 
        end    
        disp(lb)
        l(i) = prod(lb) 
    end
    //l_prod = prod(l)
    disp(l)
    for ij = 1:length(n)
        p = p + y(ij)*l(ij)
    end
    w = p;
endfunction

function k = polynom_for_func_Runge(n, x)
    deff('y = fun(x)', 'y=1/(1+25*(x.^2))')
    for i = 1:length(n)
        y(i) = fun(x)
    end
    disp(y)
    //p1 = polynom(n, y, x)
    p1 = polynom_cheb(n, y, x)
    k = p1;
endfunction
function w = polynom_cheb(n1, y, x)
    //y = array of znachen 
    pi=3.14;
    //n1 = k-st promijkiv 
    //x = tochka v yakiy shukayemo
    //prod(..) добуток
    vidrizok = -1:1;
    for k = 1:n1
        n(k) = cos(pi*((2*k - 1)/2*n1));
        //disp(n(k))
    end
    p = 0;
    for i = 1:length(n1)
        lb = []
        for j = 1:length(n1)
            if i ~= j then
                lb(j) = ((x - n(j))/(n(i) - n(j)));
            else
                lb(j) = 1; 
            end 
        end    
        disp(lb)
        l(i) = prod(lb) 
    end
    //l_prod = prod(l)
    disp(l)
    for ij = 1:length(n1)
        p = p + y(ij)*l(ij)
    end
    //f = figure("p", p, "vidrizok", vidrizok);
   // plot2d2();
    k = [-1:1:n(k))]
    plot2d(fun(n)); 
    w = p;
endfunction

function k = polynom_for_other_func(n, x)
    deff('y = fun(x)', 'y=log(x + 2)')
    for i = 1:length(n)
        y(i) = fun(x)
    end
    disp(y)
    p1 = polynom(n, y, x)
    k = p1;
endfunction
