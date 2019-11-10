rng('default')

% Given data
R = wblrnd(100,2,100,1);

ecdf(R,'Function','survivor','Alpha',0.05,'Bounds','on');

% Get plotted lines, 3 in total
h = get(gca,'children');


% Customize First line 
set(h(1),'LineWidth',3, 'color', 'red', 'LineStyle', '-');

% Customize second line 
set(h(2),'LineWidth',15, 'color', 'blue', 'LineStyle', '-');

% Customize third line 
set(h(3),'LineWidth',8, 'color', 'green', 'Marker', '+', 'LineStyle', '-');

% axes label
xlabel('Xlabel', 'color', 'red')
ylabel('Ylabel', 'color', 'red')
xticklabels({'X1'; 'X2'; 'X3';'X4'; 'X5'})
yticklabels({'Y1'; 'Y2'; 'Y3';'Y4'; 'Y5'; 'Y6'; 'Y7'; 'Y8';'Y9'; 'Y10'})
% display ylabel horizontally
hYLabel = get(gca,'YLabel');
set(hYLabel,'rotation',0,'VerticalAlignment','middle',  'HorizontalAlignment','right')


% Customizing axes /Borders/ labels 
set(gca,'XGrid','on', 'YGrid', 'on', 'Fontsize', 20,'linewidth', 5);


% legend
[~,b] = legend([h(1) h(2) h(3)],{'Line 1 ','Line 2', 'Line 3'}, 'FontSize',30);
set(findobj(b,'-property','MarkerSize'),'MarkerSize',30);

title('Customized ecdf','color', 'red', 'fontSize', 30)

