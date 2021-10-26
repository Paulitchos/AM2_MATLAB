%  Função para o uso dos métodos todos em simultâneo
%
%Alunos:
%   26/04/2021  Paulo Gouveia    a2020121705.isec.pt
%   26/04/2021  Miguel Ferreira  a2020107016.isec.pt
%   26/04/2021  Pablo Amaral     a2020143935.isec.pt

function y = MNumericosPVI(f,a,b,n,y0)

MetodoEuler=MEuler(f,a,b,n,y0);

MetodoEulerMelh=MEulerMelh(f,a,b,n,y0);

MetodoRK2=NRK2(f,a,b,n,y0);

MetodoRK4=NRK4(f,a,b,n,y0);

MetodoODE45=NODE45(f,a,b,n,y0);

MetodoDormandPrince=DormandPrince(f,a,b,n,y0);

y=table(MetodoEuler',MetodoEulerMelh',MetodoRK2',MetodoRK4',MetodoODE45',MetodoDormandPrince','VariableNames',{'MetodoEuler','MetodoEulerMelh','MetodoRK2','MetodoRK4','MetodoODE45','MetodoDormandPrince'});