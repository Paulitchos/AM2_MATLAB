function [t,u,v] = NRK4SED(f,g,a,b,n,u0,v0)
%NRK4SED   Método Númerico para resolver um Sistema se SED/PVI:
%Runge-Kutta de Ordem 4
%   y = NRK4SED(f,g,a,b,n,u0,v0) Método numérico para a resolução de um PVI
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
%   16/05/2021  Paulo Gouveia    a2020121705.isec.pt
%   16/05/2021  Miguel Ferreira  a2020107016.isec.pt
%   16/05/2021  Pablo Amaral     a2020143935.isec.pt
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
    
    k2u = h*f(t(i)+0.5*h,u(i)+0.5*k1u,v(i)+0.5*k1v);
    k2v = h*g(t(i)+0.5*h,u(i)+0.5*k1u,v(i)+0.5*k1v);
    
    k3u = h*f(t(i)+0.5*h,u(i)+0.5*k2u,v(i)+0.5*k2v);
    k3v = h*g(t(i)+0.5*h,u(i)+0.5*k2u,v(i)+0.5*k2v);
    
    k4u = h*f(t(i)+0.5*h,u(i)+k3u,v(i)+k3v);
    k4v = h*g(t(i)+0.5*h,u(i)+k3u,v(i)+k3v);
    
    u(i+1) = u(i)+ (k1u+2*k2u+2*k3u+k4u)/6;
    v(i+1) = v(i)+ (k1v+2*k2v+2*k3v+k4v)/6;    
end
end

