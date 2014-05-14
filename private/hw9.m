% ELEC 320 HW 9
% a
clear all 
close all
N = 10
un = ones(1,N);
n = [0:1:N-1];
stem(n,un,'*');
xlabel('n')
ylabel('u[n]')
grid

% b
syms z
UZ = z.^(-n)

% c & d do using long division

% e
f1n = iztrans(z/(z+1))
figure (2)
f1n = subs(f1n,n)
stem(n,f1n,'*')
xlabel('n')
ylabel('f1[n]')
grid

% f
figure(3)
f2n=un.*n;
stem(n,f2n,'*')
xlabel('n')
F2Z=f2n.*(z.^-n)
ylabel('f2[n]')
grid
syms n
un1=n^0
ztrans(un1)

%g
F2zg = ztrans(n)

%P
T =0.1
xn=2*exp(-2*n*T)
FXZ=ztrans(xn)
f=0:.0005:15;
w=2*pi*f;
Xjw=subs(FXZ,exp(j*w*.1));
figure(5)
plot(w,abs(Xjw))
xlabel('w')
ylabel('Mag')
grid
figure(6)
plot(w,180/pi*angle(Xjw))
xlabel('w')
ylabel('phase, degrees')
grid