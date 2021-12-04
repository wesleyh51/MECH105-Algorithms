%q(t) = q_0e^(-Rt/2L)cos(sqrt((1/LC)-(R/(2L))^(2)t)
%house keeping 
clc;clear all; close all;
format long;
t= linspace(0,0.8);
q0=10;
R= 60;
L=9;
C=0.00005;
q= q0.*exp((-R.*t)/(2.*L)).*cos(sqrt(1/(L.*C))-(R/(2.*L)).^(2).*t);
subplot(2,1,1), plot(t,q);
grid; 
xlabel ('time');
ylabel('charge on the capacitor');
title('q vs t');

c= 0.0005;
q2 = q0.*exp((-R.*t)/(2.*L)).*cos(sqrt(1/(L.*c))-(R/(2.*L)).^(2).*t);
subplot(2,1,2), plot(t,q2);
grid;
xlabel ('time');
ylabel('charge on the capacitor');
title('q2 vs t');


q = q0.*exp((-R.*t)/(2.*L)).*cos(sqrt(1/(L.*C)-(R/(2.*L)).^2).*t); 