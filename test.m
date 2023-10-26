clc
clear 
close all

alpha = 0.4;
%r = 1;
r=(2-alpha)/(1*alpha);
T = 1;
a = 0;
b = pi;
c = 0;
d = pi;
u0 = @(x,y) (sin(x)).^(3/4).*(sin(y)).^(3/4);
f = @(x,y,t) 0;
sigma = 1;

N1 = 1024; N2 = 1024; N = 32; 

[~, x1, y1, U1] = graded_solver(T, a, b, c, d, alpha, sigma, r, N1, N2, N, u0, f);
[~, x2, y2, U2] = graded_solver(T, a, b, c, d, alpha, sigma, r, N1,N2, 2*N, u0, f);
[~, x3, y3, U3] = graded_solver(T, a, b, c, d, alpha, sigma, r, N1, N2, 4*N, u0, f);
[~, x4, y4, U4] = graded_solver(T, a, b, c, d, alpha, sigma, r, N1, N2, 8*N, u0, f);


err1 = max(max(abs(U1-U2(:,1:2:end))))
err2 = max(max(abs(U2-U3(:,1:2:end))))
err3 = max(max(abs(U3-U4(:,1:2:end))))
 
rate1 = log(err1/err2)/log(2)
rate2 = log(err2/err3)/log(2)

