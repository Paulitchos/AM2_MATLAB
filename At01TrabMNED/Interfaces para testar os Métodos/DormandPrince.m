function y = DormandPrince(f,a,b,n,y0)
%DormandPrince  Método Númerico para resolver um PVI: Dormand Prince
%   y = DormandPrince(f,a,b,n,y0) Método numérico para a resolução de um PVI
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

%referência: http://depa.fquim.unam.mx/amyd/archivero/DormandPrince_19856.pdf

%Ir ver https://www.mathworks.com/matlabcentral/answers/494191-planet-orbit-dormand-prince-algorithm

%   26/04/2021  Paulo Gouveia    a2020121705.isec.pt
%   26/04/2021  Miguel Ferreira  a2020107016.isec.pt
%   26/04/2021  Pablo Amaral     a2020143935.isec.pt

h = (b-a)/n;      %Tamanho de cada sub-intervalo

t = a : h : b;    %Pré-alocação de memória no vetor das abcissas

y = zeros(1,n+1); %Pré-alocação de memória no vetor das ordenadas

y(1) = y0;        % Condição inicial PVi

 for i=1:n                                                                      
        
        k1 = f(t(i), y(i));                           
        
        k2 = f(t(i) + h/5, y(i) + ((h*k1)/5));           
        
        k3 = f(t(i) + ((3*h)/10), y(i) + ((3*h*k1)/40)+((9*h*k2)/40));            
        
        k4 = f(t(i)+((4*h)/5), y(i) + ((44*h*k1)/45)-((56*h*k2)/15)+((32*h*k3)/9)); 
        
        k5=  f(t(i)+((8*h)/9), y(i) + ((19372*h*k1)/6561)- ((25360*h*k2)/2187)+((64448*h*k3)/6561)-((212*h*k4)/729));
        
        k6=  f(t(i)+ h, y(i) + ((9017*h*k1)/3168)- ((355*h*k2)/33)+((46732*h*k3)/5247)+((49*h*k4)/176)-((5103*h*k5)/18656));
                
        y(i + 1) = y(i) + h*(((35*k1)/384) + ((500*k3)/1113) + ((125*k4)/192) - ((2187*k5)/6784)+((11*k6)/84));    
 end
 
end