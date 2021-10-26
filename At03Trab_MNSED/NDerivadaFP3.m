% Formula das Diferençs progressivas em 3 pontos
% f'(xi)=(-3*f(x(i)) + 4*f(x(i+1)) - f(x(i+2))/(2*h)
% INPUT:  f - função
%         [a, b] - intervalo de derivação
%         h - passo da discretização
%         y - imagens x vs y
% OUTPUT: [x, y] - malha de pontos
%         dydx - derivada de f 
%
%Alunos:
%  Paulo Gouveia    a2020121705.isec.pt
%  Miguel Ferreira  a2020107016.isec.pt
%  Pablo Amaral     a2020143935.isec.pt 
function [x,y,dydx]=NDerivadaFP3(f,a,b,h,y)
    x=a:h:b;
    n=length(x);
    if nargin==5
        y=f(x);
    end
        dydx=zeros(1,n);
    for i=1:n-2
        dydx(i)=( (-3)*y(i) + 4*y(i+1) - y(i+2) ) / (2*h);
    end
    dydx(n-1)=( y(n-3) - 4*y(n-2) + 3*y(n-1) )/(2*h);
    dydx(n)=( y(n-2) - 4*y(n-1) + 3*y(n) )/(2*h);
end