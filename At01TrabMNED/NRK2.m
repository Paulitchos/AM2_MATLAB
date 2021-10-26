function y = NRK2(f,a,b,n,y0)
%NRK2  Método Númerico para resolver um PVI: Runge-Kutta de ordem 2
%   y = NRK2(f,a,b,n,y0) Método numérico para a resolução de um PVI
%
%INPUT:
%   f - Função da equação diferencial, em t e y
%   a - Limite esquerdo do intervalo
%   b - Limite direito do intervalo
%   n - Numero de sub-intervalos
%   y0 - Valor (condição) Inicial do PVI
%
%OUTPUT: 
%   y - vector das soluções aproximadas
%
% Alunos: 
%   25/04/2021  Paulo Gouveia    a2020121705.isec.pt
%   25/04/2021  Miguel Ferreira  a2020107016.isec.pt
%   25/04/2021  Pablo Amaral     a2020143935.isec.pt

h = (b-a)/n;       

t = a:h:b;         

y = zeros(1,n+1);  

y(1) = y0;         

for i =1:n                           
    
    k1 = h*f(t(i),y(i));             
    
    k2 = h*f(t(i+1),y(i)+k1);        
    
    y(i+1) = y(i)+(k1+k2)/2;         
    
end
end