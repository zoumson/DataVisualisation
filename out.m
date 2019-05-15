clc
clear
close all
h = figure(2);
s = scatter(0:9,zeros(1, 10), 500) ;
s.Marker = 'none';
hold on 
s = scatter(0:9,1.2*ones(1, 10)) ;
s.Marker = 'none';
hold on 
s1 = scatter(1:8,0.1*ones(1, 8), 500, 'X','red', 'Linewidth', 10) ;
hold on 
scatter(1:8,0.2*ones(1, 8), 500, 'X','red', 'Linewidth', 10) ;
hold on 
scatter(1:8,0.3*ones(1, 8), 500, 'X','red', 'Linewidth', 10) ;
hold on 
scatter(1:8,0.4*ones(1, 8), 500, 'X','red', 'Linewidth', 10) ;
hold on 
scatter(1:8,0.5*ones(1, 8), 500, 'X','red', 'Linewidth', 10) ;
hold on 
s2 = scatter(1,0.6, 500, 'O','green', 'Linewidth', 10) ;
hold on 
scatter(2:8,0.6*ones(1, 7), 500, 'X','red', 'Linewidth', 10) ;
hold on 
scatter(1:2,0.7*ones(1,2), 500, 'O','green', 'Linewidth', 10) ;
hold on 
scatter(3:4,0.7*ones(1, 2), 500, 'X','red', 'Linewidth', 10) ;

hold on 
scatter(5:6,0.7*ones(1,2), 500, 'O','green', 'Linewidth', 10) ;
hold on 
scatter(7:8,0.7*ones(1, 2), 500, 'X','red', 'Linewidth', 10) ;
hold on 
scatter(1:6,0.8*ones(1, 6), 500, 'O','green', 'Linewidth', 10) ;
hold on 
scatter(7:8,0.8*ones(1, 2), 500, 'X','red', 'Linewidth', 10) ;
hold on 
scatter(1,0.9, 500, 'O','green', 'Linewidth', 10) ;
hold on 
scatter(2,0.9, 500, 'X','red', 'Linewidth', 10) ;
hold on 
scatter(3:8,0.9*ones(1, 6), 500, 'O','green', 'Linewidth', 10) ;
hold on 
scatter(1,1, 500, 'O','green', 'Linewidth', 10) ;
hold on 
scatter(2,1, 500, 'X','red', 'Linewidth', 10) ;
hold on 
scatter(3:8,ones(1, 6), 500, 'O','green', 'Linewidth', 10) ;

yticks([0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
xticks(0:8);
xlabel('Velocity')
ylabel('ER')
title('Outer Chamber Operation Range', 'color', 'y');

[~,b] = legend([s1 s2],{'NO REACTION','REACTION'});
set(findobj(b,'-property','MarkerSize'),'MarkerSize',10);
grid on
grid minor
set(gca,'FontSize',20)
set(get(h,'CurrentAxes'),'GridAlpha',0.4,'MinorGridAlpha',0.2);
whitebg('k');