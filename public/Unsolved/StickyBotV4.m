% Script to determine path and plot points of path for "StickyBotIII" based
% on known link size relationships

% Created by: Yifan Ge, Jordan Rivera, Stasia Schlatter
% 9.12.12

% Establish known variables 

F = 10;      % Scaling factor for all lengths used below (r1 -5, x, y)

r1 = F * 2;     % Length of ground link between r2 & r5
r2 = F * 1.3;   % 
r3 = F * 3;     %
r4 = F * 3;     %
r5 = F * 3.3;   %
x = F * 2;      % Distance from intersection of r3 & r4 to point P
y = F * 4.8;    % Distance from intersection of r2 & r3 to point P
r = [r1, r2, r3, r4 ,r5, x, y]; 
theta1 = pi/2;  % angle of ground link from horizontal

%%
clf

speed = input('Please enter the plotting speed (1-10): ','s');
step = str2double(speed)/100;

% Ask for limit on theta4
response4 = input('Please enter theta 4 limit in degree: ', 's');
degree4 = str2num(response4);
limit4 = degree4*pi/180;
theta4Lim = limit4(1):step:limit4(2);

% Ask for limit on theta2
response2 = input('Please enter theta 2 limit: ', 's');
degree2 = str2num(response2);
limit2 = degree2*pi/180;
theta2Lim = limit2(1):step:limit2(2);

hf = axes;  % Declare the handle
g = line;   % Line for the trace of the point of interest

% set the axes with x and y limits
set(hf, 'XLim',[-80,10],'YLim', [-10,80]);
axis equal
axis manual
grid on
title('Five bar simulation of StikyBotIII');
xlabel('x');
ylabel('y');

P2 = [0 ; r1];   % R1 with xi, xf, yi, yf in a matrice
P4 = [0 ; 0];
l1 = line([0,0], [0,r1],'color',...
                    [.4 .4 .8],'LineWidth',3); 
                    % Defines the fixed R1
hold on

%%
% Define all the initial vectors
theta4 = limit4(1);
theta2 = limit2(1);
[P3, P5, Px, Py, P] = getParameter(theta2, theta4, r);
Pl = P;
defect = 0;
l2 = line([P2(1), P3(1)], [P2(2), P3(2)],'color',...
                    [.4 .4 .8],'LineWidth',3);
l3 = line([P3(1), Px(1)], [P3(2), Px(2)],'color',...
                    [.4 .4 .8],'LineWidth',3);
l5 = line([P5(1), Px(1)], [P5(2), Px(2)],'color',...
                    [.4 .4 .8],'LineWidth',3);
l4 = line([P4(1), P5(1)], [P4(2), P5(2)],'color',...
                    [.4 .4 .8],'LineWidth',3);
lx = line([Px(1), P(1)], [Px(2), P(2)],'color',...
                    [.4 .4 .8],'LineWidth',3);
ly = line([Py(1), P(1)], [Py(2), P(2)],'color',...
                    [.4 .4 .8],'LineWidth',3);

% Draw the graph
for k = 1:length(theta4Lim)
    theta4 = theta4Lim(k);
    for j = 1:length(theta2Lim)
        set(g,'XData',Pl(1,:),'YData',Pl(2,:));
        theta2 = theta2Lim(j);
        [P3, P5, Px, Py, P] = getParameter(theta2, theta4, r);
        defect = isDefected(P3,Px,Py,P,r);
        if (defect == 0)
            set(l2,'XData',[P2(1), P3(1)],'YData',[P2(2), P3(2)]);
            set(l3,'XData',[P3(1), Px(1)],'YData',[P3(2), Px(2)]);
            set(l5,'XData',[P5(1), Px(1)],'YData',[P5(2), Px(2)]);
            set(l4,'XData',[P4(1), P5(1)],'YData',[P4(2), P5(2)]);
            set(lx,'XData',[Px(1), P(1)],'YData',[Px(2), P(2)]);
            set(ly,'XData',[Py(1), P(1)],'YData',[Py(2), P(2)]);
            Pl = cat(2,Pl,P);
            drawnow
        end
    end
end

