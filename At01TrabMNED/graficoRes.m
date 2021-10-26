% Gráficos de todos os métodos
%
% Alunos:
%   26/04/2021  Paulo Gouveia    a2020121705.isec.pt
%   26/04/2021  Miguel Ferreira  a2020107016.isec.pt
%   26/04/2021  Pablo Amaral     a2020143935.isec.pt


function graficoRes(f,a,b,n,y0)


MetodoEuler=MEuler(f,a,b,n,y0);
MetodoEulerM=MEulerMelh(f,a,b,n,y0);
MetodoRK2=NRK2(f,a,b,n,y0);
MetodoRK4=NRK4(f,a,b,n,y0);
MetodoODE45=NODE45(f,a,b,n,y0);
MetodoDormandPrince=DormandPrince(f,a,b,n,y0);

h=(b-a)/n;
t=a:h:b;

hold on

plot(t,MetodoEuler,'b.-');
plot(t,MetodoEulerM,'go:');
plot(t,MetodoRK2,'rx:');
plot(t,MetodoRK4,'c+--');
plot(t,MetodoODE45,'m*-');
plot(t,MetodoDormandPrince,'ys:');

legend('Euler','Método Euler Melhorado','Metodo RK2','Metodo RK4','Método ODE45','Método Dormand Prince');
grid on
xlabel('t');
ylabel('y');
hold off