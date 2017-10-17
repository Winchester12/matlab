function y=mysum(x)
    arr(1:x) = x
	arr2 = 1:x
    arr3(1:x) = x
    disp(arr)
    disp(arr2)
    disp(arr3)
	arr3 = arr.^arr2
    y = sum(arr3)
    return y
endfunction
