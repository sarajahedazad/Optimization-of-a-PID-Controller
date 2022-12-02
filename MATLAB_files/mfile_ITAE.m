close all;clear all;clc;
D=9; w=pi/10;
k=[1 1 1];
%For calculating PS
%syms tt;
%p=(-D/2)*cos(w*tt)+D/2;
%ps=laplace(p)

s = tf('s');
ps=(D/2)/s-(D/2)*s/(s^2+w^2);
T_con=1;
Torque=T_con/s;
G=1/(s^3+2*s^2+11*s);
G_ol=Torque*G;

t=[0:0.01:10]';
input=(-D/2)*cos(w*t)+D/2;

lb=[];ub=[];
options=optimoptions(@simulannealbnd,'FunctionTolerance',1e-3,'PlotFcn',@saplotbestf);
[x,fval,exitflag,output]= simulannealbnd(@cost_ITAE,k,lb,ub,options)

sim('elevator_ITAE',t);
figure();
plot(t,input);
hold on
plot(t,output);
legend('input','output')
xlabel('t');
ylabel('distance');
title('Using ITAE')
k