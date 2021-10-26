  
%RTrapezios Calculo Integração Numérica através da Regra dos Trapézios
%   t = RTrapezios(f,a,b,n)
%   t = h*(f(a)+f(b)+t)/2;
%
%INPUT:
%   f - função real de variável real x
%   [a, b] - extremos do intervalo da variável independente x
%   n - número de subintervalos ou iterações da regra
%OUTPUT: 
%   t - Resultado da área do Integral
%   t = h*(f(a)+f(b)+t)/2 , i=2,...,n-1

%Alunos:
%  Paulo Gouveia    a2020121705.isec.pt
%  Miguel Ferreira  a2020107016.isec.pt
%  Pablo Amaral     a2020143935.isec.pt 

function T = RTrapezios(f,a,b,n)

h = (b-a)/n;
s = 0;
x=a;

for i=1:n-1
	x=x+h;
	s = s+f(x);
end

T = h/2*((f(a) +2*s + f(b)));
end