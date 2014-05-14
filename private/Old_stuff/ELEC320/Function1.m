t=[-10:0.01:10];

% 4*f(t) vs t
y = 4*f(t)
figure(1)
plot(t,y,'*')
title('4*f(t) vs t')
xlabel('t')
ylabel('4*f(t)')

% f(2*t) vs t
y = f(2*t)
figure(2)
plot(t,y,'*')
title('f(2*t) vs t')
xlabel('t')
ylabel('f(2*t)')

% f(t/4) vs t
t_extended = [-10:0.1:30]
y = f(t_extended/4)
figure(3)
plot(t_extended,y,'*')
title('f(t/4) vs t')
xlabel('t')
ylabel('f(t/4)')

% f(t+1) vs t
y = f(t+1)
figure(4)
plot(t,y,'*')
title('f(t+1) vs t')
xlabel('t')
ylabel('f(t+1)')

% f(t-2) vs t
y = f(t-2)
figure(5)
plot(t,y,'*')
title('f(t-2) vs t')
xlabel('t')
ylabel('f(t-2)')

% f((t-2)/2) vs t
t_extended = [-10:0.1:20]
y = f((t_extended-2)/2)
figure(6)
plot(t_extended,y,'*')
title('f((t-2)/2) vs t')
xlabel('t')
ylabel('f((t-2)/2)')

% f((t+4)/0.5) vs t
y = f((t+4)/0.5)
figure(7)
plot(t,y,'*')
title('f((t+4)/0.5) vs t')
xlabel('t')
ylabel('f((t+4)/0.5)')