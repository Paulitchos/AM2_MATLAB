%NODE45  Método Númerico para resolver um PVI: ODE45 função do MATLAB
%   y = NODE45(f,a,b,n,y0) Método numérico para a resolução de um PVI
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
%   26/04/2021  Paulo Gouveia    a2020121705.isec.pt
%   26/04/2021  Miguel Ferreira  a2020107016.isec.pt
%   26/04/2021  Pablo Amaral     a2020143935.isec.pt

function y = NODE45(f,a,b,n,y0)  
   
    h = (b-a)/n;             % Tamanho de cada sub-intervalo
    
    t = a:h:b;               % Pré-alocação de memória no vetor das abcissas
    
    [~,y] = ode45(f,t,y0);
    
    y = y.';                 % Condição inicial PVi
       
end