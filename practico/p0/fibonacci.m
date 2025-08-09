function res = fibonacci(n)
    res = [1];
    if n == 0
        return;
    end

    res = [1,1];
    if n == 1
        return;
    end

    for i = 2:n
        res(i+1) = res(i) + res(i-1);
    end
end