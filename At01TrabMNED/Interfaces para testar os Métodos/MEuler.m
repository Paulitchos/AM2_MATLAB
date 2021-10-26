function y = MEuler(f,a,b,n,y0)
%MEULER Método de Euler para resolução numérica de EDO/PVI
%   y'=f(t,y), t=[a,b], y(a)=y0
%   y(i+1)=y(i)+hf(t(i),y(i)), i=0,1,2,...,n
%INPUT:
%   f - função da EDO y'=f(t,y)
%   [a,b] - intervalo de valores da variável independente t
%   n - núnmero de subintervalos ou iterações do método
%   y0 - aproximação inicial y(a)=y0
%OUTPUT:
%   y - vetor das soluções aproximadas do PVI em cada um dos t(i)
%
%   26/03/2021  Arménio Correia  armenioc@isec.pt
%
% Alunos:
%   26/04/2021  Paulo Gouveia    a2020121705.isec.pt
%   26/04/2021  Miguel Ferreira  a2020107016.isec.pt
%   26/04/2021  Pablo Amaral     a2020143935.isec.pt

h = (b-a)/n;    % Tamanho de cada sub-intervalo

t = a:h:b;

y = zeros(1,n+1);

y(1) = y0;      % Condição inicial PVi

for i =1:n                                % O número de iterações vai ser igual a n
    
    y(i+1) = y(i)+h*f(t(i),y(i)); 
    
end
end

