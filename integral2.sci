function y = integral(a, b, n)
    deff('f=fun(x)', 'f=x.^2');
    h = (b-a)/n;
    i = 0:n-1;
    x = a + b * i
    //k = (b - a) * fun(x);//s = sum(fun(x))
    k = sum(fun(x));
    s = h * k;
    disp(k)
    s = h*s;
    y = s;
    //return y;//integral(1,2,1)
endfunction

function y = integral_without_ab(n)
    a = 0;
    b = 1;
    y = inte(a, b, n);
    //return y;//integral(1,2,1)
endfunction
function y=inte (a, b, n)
    deff('f=fun(x)', 'f=x.^2');
    h=(b-a)/n;
    x=a;
    s=0;
    for i=0:n-1
        x=a+i*h;
        s=s+fun(x)
    end
    s = sum(s)*h
    disp(s);
    y = s;
endfunction



