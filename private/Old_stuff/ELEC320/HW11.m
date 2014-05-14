A = 5;
f = 10;
t = (0:(1/f)/50:2/f-(1/f)/50);

s = ones(8,1)*A*cos(2*pi*f*t);

s1 = s(1,1:100);
s2 = s(2,1:100);
s3 = s(3,1:100);
s4 = s(4,1:100);
s5 = s(5,1:100);
s6 = s(6,1:100);
s7 = s(7,1:100);
s8 = s(8,1:100);

noise = rand([8,100])-0.5;

s_noise = s + noise;

s_average = sum(s_noise)/8;
    
figure (1)
subplot(3,1,1)
plot(t,s1)
title('a sample trace vs. t')
xlabel('t(s)')
ylabel('sample signal(V)')
axis([0 2/f -6 6])
subplot(3,1,2)
plot(t,noise(1,1:100))
title('a noisy trace vs. t')
xlabel('t(s)')
ylabel('noisy signal(V)')
axis([0 2/f -0.6 0.6])
subplot(3,1,3)
plot(t,s_average)
title('the average trace (8 traces) vs. t')
xlabel('t(s)')
ylabel('average signal(V)')
axis([0 2/f -6 6])

s1_squared = s1 .* s1;
s1_Pav_8 = sum(s1_squared(1,1:100))/100

noise1 = noise(1,1:100);
noise1_squared = noise1 .* noise1;
noise1_Pav_8 = sum(noise1_squared(1,1:100))/100

s_average_squared = s_average .* s_average;
s_average_Pav_8 = sum(s_average_squared(1,1:100))/100


%32 traces
s = ones(32,1)*A*cos(2*pi*f*t);
s1 = s(1,1:100);
noise = rand([32,100])-0.5;
s_noise = s + noise;
s_average = sum(s_noise)/32;

figure (2)
subplot(3,1,1)
plot(t,s1)
title('a sample trace vs. t')
xlabel('t(s)')
ylabel('sample signal(V)')
axis([0 2/f -6 6])
subplot(3,1,2)
plot(t,noise(1,1:100))
title('a noisy trace vs. t')
xlabel('t(s)')
ylabel('noisy signal(V)')
axis([0 2/f -0.6 0.6])
subplot(3,1,3)
plot(t,s_average)
title('the average trace (32 traces) vs. t')
xlabel('t(s)')
ylabel('average signal(V)')
axis([0 2/f -6 6])

s1_squared = s1 .* s1;
s1_Pav_8 = sum(s1_squared(1,1:100))/100

noise1 = noise(1,1:100);
noise1_squared = noise1 .* noise1;
noise1_Pav_8 = sum(noise1_squared(1,1:100))/100

s_average_squared = s_average .* s_average;
s_average_Pav_8 = sum(s_average_squared(1,1:100))/100