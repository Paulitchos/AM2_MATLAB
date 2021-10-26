% Formula das Diferenças regressivas em 3 pontos
% f'(xi)=(f(x(i-2))-4*f(x(i-1)+3*f(x(i)))/(2*h)
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
function [x,y,dydx]=NDerivadaFR3(f,a,b,h,y)
    x=a:h:b;
    n=length(x);
    if nargin==5
        y=f(x);
    end
    dydx=zeros(1,n);
    dydx(1)=( (-3)*y(1) + 4*y(2) - y(3) )/(2*h);
    dydx(2)=( (-3)*y(2) + 4*y(3) - y(4) )/(2*h);
    for i=3:n
        dydx(i)=( y(i-2) - 4*y(i-1) + 3*y(i) )/(2*h);
    end
end