function S = RSimpson(f,a,b,n)
    h = (b-a)/n;
    x = a:h:b;
    s = 0;
    for i = 2:n-1
        if mod(i,2)==0
            s = s+2*f(x(i));
        else
            s = s+4*f(x(i));
        end
    end
    S = h/3*(f(a)+s+f(b));
end