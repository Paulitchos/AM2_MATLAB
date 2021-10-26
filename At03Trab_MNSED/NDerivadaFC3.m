% Formula das Diferenças centradas em 3 pontos
% f'(xi)=(f(x(i+1))-f(x(i-1))/(2*h)
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
function [x,y,dydx]=NDerivadaFC3(f,a,b,h,y)
    x=a:h:b;
    n=length(x);
    if nargin==5
        y=f(x);
    end
    dydx=zeros(1,n);
    dydx(1)=(y(2)-y(1))/h;
    for i=2:n-1
        dydx(i)=(y(i+1)-y(i-1))/(2*h);
    end
    dydx(n)=(y(n)-y(n-1))/h;
end