function YN = isHarmonica(f)
    syms z(x,y)
    if (diff(f,x,2)+diff(f,y,2)==0)
        YN = 1;
    else
        YN = 0;
    end
end

