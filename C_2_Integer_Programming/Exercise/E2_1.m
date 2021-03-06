% let y=x1*x2, 
% we have y=1,if x1=x2=1;y=0,if x1=0 or x2=0
% hence we can conclude that 
% y<=x1,y<=x2;y>=x1+x2-1;y=0 or 1;
% in another word,by these inequalities,we have y=x1*x2 only;
% by defining these inequalities,we have the same equation row 1;
clc,clear;
c=[1;0;-1;1]; % x1,x2,x3,y
A=[-2,3,1,0;1,1,0,-1;-1,0,0,1;0,-1,0,1];
b=[3;1;0;0];
intcon=1:4;
lb=zeros(4,1);
ub=ones(4,1);
x=intlinprog(c,intcon,A,b,[],[],lb,ub)