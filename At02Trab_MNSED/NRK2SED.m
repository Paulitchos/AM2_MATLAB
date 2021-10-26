function [t,u,v] = NRK2SED(f,g,a,b,n,u0,v0)
%NRK2SED   Método Númerico para resolver um Sistema se SED/PVI:
%Runge-Kutta de Ordem 2
%   y = NRK2SED(f,g,a,b,n,u0,v0) Método numérico para a resolução de um PVI
%
%INPUT:
%   f - 1ª Função do sistema de equações diferenciais, em v, u e t
%   g - 2ª Função do sistema de equações diferenciais, em v, u e t
%   a - Limite esquerdo do intervalo
%   b - Limite direito do intervalo
%   n - Numero de sub-intervalos ou iterações do método
%   u0 - 1º Valor (condição) Inicial do PVI, quando u=0
%   v0 - 2º Valor (condição) Inicial do PVI, quando v=0
%
%OUTPUT: 
%   t - vector do X, dos passos de "a" a "b"
%   u - vector das soluções apróximadas dos deslocamentos
%   v - vector das soluções aproximadas das velocidades
%
%   15/04/2021  Arménio Correia   armenioc@isec.pt
%   14/05/2021  Paulo Gouveia    a2020121705.isec.pt
%   14/05/2021  Miguel Ferreira  a2020107016.isec.pt
%   14/05/2021  Pablo Amaral     a2020143935.isec.pt
%%
h = (b-a)/n;
t = a:h:b;
u = zeros(1,n+1);
v = zeros(1,n+1);
u(1) = u0;
v(1) = v0;
for i = 1:n
    k1u = h*f(t(i),u(i),v(i));
    k1v = h*g(t(i),u(i),v(i));
    k2u = h*f(t(i+1),u(i)+k1u,v(i)+k1v);
    k2v = h*g(t(i+1),u(i)+k1u,v(i)+k1v);
    u(i+1) = u(i)+ (k1u+k2u)/2;
    v(i+1) = v(i)+ (k1v+k2v)/2;    
end
end

