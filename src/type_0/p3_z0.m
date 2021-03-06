clear all;
clc;

%Type 0 system where n-m = 3 %

N = [1];
D = conv(  [0.5 1], conv([0.25 1], [0.1 1])	);

GH = tf(N, D);


figure;
subplot(2,2,1);
rlocus(GH);

subplot(2,2,3);
nyquist(GH);
axis([-10 10 -10 10])
grid;

% Margins
[Gm,Pm,Wgm,Wpm] = margin(GH)

subplot(1,2,2, 'replace');
bode(GH);
grid;
