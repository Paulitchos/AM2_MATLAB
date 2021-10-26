%MENUMNPVI  Menu de Métodos Numéricos para um PVI
%   y = MenuMNPVI(f,a,b,n,y0)
%   y'= f(t,y) com t=[a, b] e y(a)=y0 condição inicial  
%
%INPUT:
%   f - função do 2.É membro da Equação Diferencial
%   [a, b] - extremos do intervalo da variável independente t
%   n - número de subintervalos ou iterações do método
%   y0 - condição inicial t=a -> y=y0
%OUTPUT: 
%   y - vector das soluções aproximações
%
%   12/03/2020 - ArménioCorreia .: armenioc@isec.pt 
%
%Alunos:
%   26/04/2021  Paulo Gouveia    a2020121705.isec.pt
%   26/04/2021  Miguel Ferreira  a2020107016.isec.pt
%   26/04/2021  Pablo Amaral     a2020143935.isec.pt
function y=MenuMNPVI(f,a,b,n,y0)
y=[];
menuMNPVI = 1;
while menuMNPVI~=20
    clc
    disp('--------------------------------------------------')
    disp('           Métodos Numéricos para PVI             ')
    disp('--------------------------------------------------')
    menuMNPVI=menu('Métodos Numéricos para PVI', ...
                   'Método de Euler',...
                   'Método de Euler - Melhorado',...
                   'Método RK2',...
                   'Método RK4',...
                   'ODE45',....
                   'Dormand Prince',...
                   'Todos',...
                   'Sair');
    switch menuMNPVI
        case 1
            
              y=table(MEuler(f,a,b,n,y0)','VariableNames',{'Método de Euler'});
              
        case 2
            
              y=table (MEulerMelh(f,a,b,n,y0),'VariableNames',{'Método de Euler Melhorado'});
              
        case 3  
            
              y=table(NRK2(f,a,b,n,y0)','VariableNames',{'Método RK2'});  
              
        case 4
            
              y=table(NRK4(f,a,b,n,y0)','VariableNames',{'Método RK4'});
              
        case 5
            
              y=NODE45(f,a,b,n,y0);
              
        case 6
            
              y=table (DormandPrince(f,a,b,n,y0)','VariableNames',{'Método Dormand Prince'});
              
        case 7
            
              y=MNumericosPVI(f,a,b,n,y0);
              
        case 8
            
              break;
    end
    
    disp('-----------Solução aproximada do PVI---------')
    
    disp(y)
    
    input('Prima numa tecla para continuar !')
end