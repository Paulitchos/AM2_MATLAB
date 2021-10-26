%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   29/04/2021  Arménio Correia armenioc@isec.pt
function [x,y,dydx] = NDerivadaFP2(f,a,b,h,y)
        x = a:h:b;
        n = length(x);
    if nargin == 5
        y = f(x);
    end
        dydx = zeros(1,n);
    for i = 1:n-1
        dydx(i) = (y(i+1)-y(i))/h;
    end

    dydx(n) = dydx(n-1);
    %dydx(n) = (y(n)-y(n-1))/h;
end