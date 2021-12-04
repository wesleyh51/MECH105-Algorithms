close all; clear; clc;
g = 9.81;
mu = 0.55;
F = 150;
m = 25;
format long;
func = @(x) (mu*m*g)/(cosd(x)+sind(x));
x = linspace(0,360,100);
y = (mu*m*g)./(cosd(x)+sind(x));
plot(x,y)
xlabel('angle in degrees')
ylabel('value of function')
title('pulling a box')
grid 
xu= 130
xl = 150
maxit=200;
bisect(func, xl, xu, es, maxit)